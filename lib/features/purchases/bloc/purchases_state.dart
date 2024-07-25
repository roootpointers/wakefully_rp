part of 'purchases_bloc.dart';

@freezed
sealed class PurchasesState with _$PurchasesState {
  const factory PurchasesState.uninitialized(
          {@Default(ActionState.idle()) ActionState initilization}) =
      UninitializedPurchases;
  const factory PurchasesState.initialized({
    @Default(false) bool subscribed,
    @Default(false) bool upgradeAvailable,
    @Default(false) bool isEligibileForTrial,
    required OfferingsInfo offeringsInfo,
    DateTime? latestExpirationDate,
    @Default(ActionState.idle()) ActionState purchaseState,
    @Default(ActionState.idle()) ActionState restorePurchasesState,
  }) = InitializedPurchases;

  factory PurchasesState.fromJson(Map<String, dynamic> json) =>
      _$PurchasesStateFromJson(json);
}
