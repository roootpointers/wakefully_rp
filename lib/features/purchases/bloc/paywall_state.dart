part of 'paywall_bloc.dart';

@freezed
class PaywallState with _$PaywallState {
  const factory PaywallState({
    @Default(ActionState.idle()) ActionState subscribingState,
    @Default(PageState.initial()) PageState pageStatus,
  }) = _PaywallState;
}
