part of 'code_redemption_cubit.dart';

@freezed
class CodeRedemptionState with _$CodeRedemptionState {
  const factory CodeRedemptionState({
    @Default(PageState.initial()) PageState pageStatus,
    String? code,
  }) = _CodeRedemptionState;
}
