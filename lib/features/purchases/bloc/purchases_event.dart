part of 'purchases_bloc.dart';

@freezed
class PurchasesEvent with _$PurchasesEvent {
  const factory PurchasesEvent.started({OfferingsInfo? offeringsInfo}) =
      _Started;
  const factory PurchasesEvent.subscriptionChecked() = _SubscriptionChecked;
  const factory PurchasesEvent.subscriptionPurchased(
      Subscriptions subscription) = _SubscriptionPurchased;
  const factory PurchasesEvent.purchasesRestored() = _PurchasesRestored;
  const factory PurchasesEvent.resetted() = _Resetted;
}
