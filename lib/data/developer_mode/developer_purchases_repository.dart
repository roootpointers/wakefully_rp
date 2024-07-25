import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wakefully_analyzer/core/failure.dart';
import 'package:wakefully_analyzer/data/purchases/offerings_info.dart';
import 'package:wakefully_analyzer/features/purchases/premium_subscription_notifier.dart';

import '../purchases/purchases_repository.dart';
import 'developer_mode_repository.dart';

@LazySingleton(as: PurchasesRepository)
class DeveloperPurchasesRepository implements PurchasesRepository {
  final PurchasesRepository _purchasesRepository;
  final DeveloperModeRepository _developerModeRepository;
  final PremiumSubscriptionNotifier _premiumSubscriptionNotifier;

  DeveloperPurchasesRepository(
      this._developerModeRepository,
      @Named('purchases-repository') this._purchasesRepository,
      this._premiumSubscriptionNotifier);

  @override
  Future<Either<Failure, void>> configure(String userId) =>
      _purchasesRepository.configure(userId);

  @override
  Future<Either<Failure, OfferingsInfo>> getOfferingsInfo() {
    if (_developerModeRepository.enabled) {
      return Future.value(
        const Right(
          OfferingsInfo(
            monthlyPrice: "\$0.99",
            annualPrice: '\$2.00',
            savings: 10,
            isEligibleForTrial: true,
          ),
        ),
      );
    } else {
      return _purchasesRepository.getOfferingsInfo();
    }
  }

  @override
  Future<Either<Failure, bool>> hasPremiumSubscription() {
    if (_developerModeRepository.enabled) {
      _premiumSubscriptionNotifier
          .notify(_developerModeRepository.hasPremiumSubscription.value);
      return Future.value(
          Right(_developerModeRepository.hasPremiumSubscription.value));
    } else {
      return _purchasesRepository.hasPremiumSubscription();
    }
  }

  @override
  Future<Either<Failure, void>> login(String userId) =>
      _purchasesRepository.login(userId);

  @override
  Future<Either<Failure, void>> restorePurchases() =>
      _purchasesRepository.restorePurchases();

  @override
  Future<Either<Failure, void>> purchaseAnnualPremium() async {
    if (_developerModeRepository.enabled) {
      await Future.delayed(const Duration(seconds: 2));
      _developerModeRepository.hasPremiumSubscription.value = true;
      return Future.value(const Right(null));
    } else {
      return _purchasesRepository.purchaseAnnualPremium();
    }
  }

  @override
  Future<Either<Failure, void>> purchaseMonthlyPremium() async {
    if (_developerModeRepository.enabled) {
      await Future.delayed(const Duration(seconds: 2));
      _developerModeRepository.hasPremiumSubscription.value = true;
      return Future.value(const Right(null));
    } else {
      return _purchasesRepository.purchaseMonthlyPremium();
    }
  }
}
