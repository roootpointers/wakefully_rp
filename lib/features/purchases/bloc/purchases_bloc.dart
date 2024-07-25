import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:wakefully_analyzer/core/authentication/authentication_repository.dart';
import 'package:wakefully_analyzer/data/purchases/purchases_repository.dart';
import 'package:wakefully_analyzer/features/purchases/premium_subscription_notifier.dart';

import '../../../core/action_state.dart';
import '../../../core/authentication/authenticated_user.dart';
import '../../../data/purchases/offerings_info.dart';
import '../subscriptions.dart';

part 'purchases_bloc.freezed.dart';
part 'purchases_bloc.g.dart';
part 'purchases_event.dart';
part 'purchases_state.dart';

@singleton
class PurchasesBloc extends Bloc<PurchasesEvent, PurchasesState>
    with HydratedMixin {
  final AuthenticationRepository _authenticationRepository;
  final PurchasesRepository _purchasesRepository;
  final PremiumSubscriptionNotifier _premiumSubscriptionNotifier;
  late AuthenticatedUser? _user;

  PurchasesBloc(
    this._purchasesRepository,
    this._authenticationRepository,
    this._premiumSubscriptionNotifier,
  ) : super(const UninitializedPurchases()) {
    on<_Started>(_onStarted);
    on<_SubscriptionChecked>(_onSubscriptionChecked);
    on<_SubscriptionPurchased>(_onSubscriptionPurchased);
    on<_Resetted>(_onResetted);
    on<_PurchasesRestored>(_onPurchasesRestored);
    _user = null;

    _authenticationRepository.authenticatedUser.listen(_handleUserChanges);
    _premiumSubscriptionNotifier.addListener(() {
      add(const PurchasesEvent.subscriptionChecked());
    });
  }

  Future<void> _handleUserChanges(AuthenticatedUser? user) async {
    if (user != null && _user != user) {
      _user = user;
      await _purchasesRepository.configure(user.id);
      await _purchasesRepository.login(user.id);
      add(const PurchasesEvent.started());
    } else if (user == null) {
      add(const PurchasesEvent.resetted());
    }
  }

  Future<FutureOr<void>> _onStarted(
      _Started event, Emitter<PurchasesState> emit) async {
    var either = await _purchasesRepository.getOfferingsInfo();
    either.fold(
        (failure) => emit(UninitializedPurchases(
            initilization: ActionState.failure(failure.message))),
        (offeringsInfo) {
      emit(PurchasesState.initialized(offeringsInfo: offeringsInfo));
      add(const PurchasesEvent.subscriptionChecked());
    });
  }

  Future<void> _onSubscriptionChecked(
      _SubscriptionChecked event, Emitter<PurchasesState> emit) async {
    switch (state) {
      case InitializedPurchases initializedState:
        var either = await _purchasesRepository.hasPremiumSubscription();
        either.fold(
            (failure) => emit(initializedState.copyWith(subscribed: false)),
            (subscribed) {
          emit(initializedState.copyWith(subscribed: subscribed));
        });
      case UninitializedPurchases _:
    }
  }

  FutureOr<void> _onSubscriptionPurchased(
      _SubscriptionPurchased event, Emitter<PurchasesState> emit) async {
    switch (state) {
      case InitializedPurchases initialized:
        emit(initialized.copyWith(
            purchaseState: const ActionState.inProgress()));

        var either = switch (event.subscription) {
          Subscriptions.monthly =>
            await _purchasesRepository.purchaseMonthlyPremium(),
          Subscriptions.annual =>
            await _purchasesRepository.purchaseAnnualPremium(),
        };

        either.fold(
          (failure) => emit(initialized.copyWith(
              purchaseState: ActionState.failure(failure.message))),
          (success) {
            emit(initialized.copyWith(
                purchaseState: const ActionState.success(
                    message: 'Purchase successful!')));
            emit(initialized.copyWith(purchaseState: const ActionState.idle()));
            add(const PurchasesEvent.subscriptionChecked());
          },
        );
      case UninitializedPurchases _:
    }
  }

  FutureOr<void> _onResetted(_Resetted event, Emitter<PurchasesState> emit) {
    emit(const PurchasesState.uninitialized());
  }

  Future<FutureOr<void>> _onPurchasesRestored(
      _PurchasesRestored event, Emitter<PurchasesState> emit) async {
    switch (state) {
      case InitializedPurchases initialized:
        await _restorePurchases(emit, initialized);
        break;
      case UninitializedPurchases _:
    }
  }

  Future<void> _restorePurchases(
      Emitter<PurchasesState> emit, InitializedPurchases initialized) async {
    emit(initialized.copyWith(
        restorePurchasesState: const ActionState.inProgress()));

    await Future.delayed(const Duration(seconds: 10));
    var either = await _purchasesRepository.restorePurchases();

    either.fold(
        (l) => emit(initialized.copyWith(
            restorePurchasesState:
                const ActionState.failure("Failed to restore purchases"))),
        (r) => emit(initialized.copyWith(
            restorePurchasesState:
                const ActionState.success(message: 'Purchases restored!'))));

    emit(initialized.copyWith(restorePurchasesState: const ActionState.idle()));
    add(const PurchasesEvent.subscriptionChecked());
  }

  @override
  PurchasesState? fromJson(Map<String, dynamic> json) =>
      PurchasesState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(PurchasesState state) => state.toJson();
}
