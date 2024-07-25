// ignore_for_file: overridden_fields

import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wakefully_analyzer/core/authentication/authenication_notifier.dart';
import 'package:wakefully_analyzer/data/developer_mode/developer_mode_repository.dart';
import 'package:wakefully_analyzer/data/purchases/offerings_info.dart';
import 'package:wakefully_analyzer/features/purchases/bloc/purchases_bloc.dart';

part 'developer_mode_bloc.freezed.dart';
part 'developer_mode_event.dart';
part 'developer_mode_state.dart';

@Singleton(env: [Environment.dev, "local"])
class DeveloperModeBloc extends Bloc<DeveloperModeEvent, DeveloperModeState> {
  final PurchasesBloc _purchasesBloc;
  final DeveloperModeRepository _developerModeRepository;
  final AuthenticationNotifier _authenticationNotifier;

  DeveloperModeBloc(this._purchasesBloc, this._developerModeRepository,
      this._authenticationNotifier)
      : super(const _DeveloperModeState()) {
    on<_EnabledToggled>(_onEnabledToggled);
    on<_PremiumSubscriptionToggled>(_onPremiumSubscriptionToggled);
    on<_SetPremiumSubscription>(_onSetPremiumSubscription);
    on<_Disabled>(_onDisabled);

    _authenticationNotifier.addListener(() {
      if (!_authenticationNotifier.isAuthenticated) {
        add(const DeveloperModeEvent.disabled());
      }
    });

    _developerModeRepository.hasPremiumSubscription.addListener(() {
      add(DeveloperModeEvent.setPremiumSubscription(
          _developerModeRepository.hasPremiumSubscription.value));
    });
  }

  FutureOr<void> _onEnabledToggled(
      _EnabledToggled event, Emitter<DeveloperModeState> emit) {
    _developerModeRepository.enabled = !state.enabled;
    emit(state.copyWith(enabled: !state.enabled));
  }

  FutureOr<void> _onPremiumSubscriptionToggled(
      _PremiumSubscriptionToggled event, Emitter<DeveloperModeState> emit) {
    var enabled = !state.subscriptions;
    _developerModeRepository.hasPremiumSubscription.value = enabled;
    emit(state.copyWith(subscriptions: enabled));

    if (enabled) {
      _purchasesBloc.add(const PurchasesEvent.started(
          offeringsInfo: OfferingsInfo(
        monthlyPrice: "0.99",
        annualPrice: '2.00',
        savings: 10,
        isEligibleForTrial: true,
      )));
    } else {
      _purchasesBloc.add(const PurchasesEvent.started());
    }
  }

  FutureOr<void> _onSetPremiumSubscription(
      _SetPremiumSubscription event, Emitter<DeveloperModeState> emit) {
    emit(state.copyWith(subscriptions: event.value));
  }

  FutureOr<void> _onDisabled(
      _Disabled event, Emitter<DeveloperModeState> emit) {
    _developerModeRepository.enabled = false;
    emit(const _DeveloperModeState());
  }
}

@Singleton(as: DeveloperModeBloc, env: [Environment.prod])
class ProdDeveloperModeBloc extends DeveloperModeBloc {
  @override
  final PurchasesBloc _purchasesBloc;
  @override
  final DeveloperModeRepository _developerModeRepository;
  @override
  final AuthenticationNotifier _authenticationNotifier;

  ProdDeveloperModeBloc(this._purchasesBloc, this._developerModeRepository,
      this._authenticationNotifier)
      : super(
          _purchasesBloc,
          _developerModeRepository,
          _authenticationNotifier,
        );

  @override
  FutureOr<void> _onEnabledToggled(
      _EnabledToggled event, Emitter<DeveloperModeState> emit) {}

  @override
  FutureOr<void> _onPremiumSubscriptionToggled(
      _PremiumSubscriptionToggled event, Emitter<DeveloperModeState> emit) {}

  @override
  FutureOr<void> _onSetPremiumSubscription(
      _SetPremiumSubscription event, Emitter<DeveloperModeState> emit) {}

  @override
  FutureOr<void> _onDisabled(
      _Disabled event, Emitter<DeveloperModeState> emit) {}
}
