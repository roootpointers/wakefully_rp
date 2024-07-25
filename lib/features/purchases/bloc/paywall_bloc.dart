import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:wakefully_analyzer/features/purchases/bloc/purchases_bloc.dart';

import '../../../core/action_state.dart';
import '../../../core/page_state.dart';

part 'paywall_event.dart';
part 'paywall_state.dart';
part 'paywall_bloc.freezed.dart';

@injectable
class PaywallBloc extends Bloc<PaywallEvent, PaywallState> {
  final PurchasesBloc _purchasesBloc;
  final Logger logger;

  PaywallBloc(this.logger, this._purchasesBloc) : super(const _PaywallState()) {
    on<_Started>(_onStarted);
  }

  Future<FutureOr<void>> _onStarted(
      _Started event, Emitter<PaywallState> emit) async {
    emit(state.copyWith(pageStatus: const PageState.loading()));

    switch (_purchasesBloc.state) {
      case InitializedPurchases _:
        emit(state.copyWith(pageStatus: const PageState.success()));
      case UninitializedPurchases _:
        emit(state.copyWith(pageStatus: const PageState.failure(message: '')));
    }
  }
}
