import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:wakefully_analyzer/core/task_either_extensions.dart';
import 'package:wakefully_analyzer/features/purchases/premium_subscription_notifier.dart';

import '../../core/failure.dart';
import '../../core/purchases/purchases_configurator.dart';
import 'offerings_info.dart';

abstract class PurchasesRepository {
  Future<Either<Failure, void>> configure(String userId);
  Future<Either<Failure, void>> login(String userId);
  Future<Either<Failure, void>> restorePurchases();
  Future<Either<Failure, OfferingsInfo>> getOfferingsInfo();
  Future<Either<Failure, bool>> hasPremiumSubscription();
  Future<Either<Failure, void>> purchaseAnnualPremium();
  Future<Either<Failure, void>> purchaseMonthlyPremium();
}

@Named('purchases-repository')
@LazySingleton(as: PurchasesRepository)
class PurchasesRepositoryImpl implements PurchasesRepository {
  final PurchasesConfigurator _purchasesConfigurator;
  final Logger _logger;
  final PremiumSubscriptionNotifier _premiumSubscriptionNotifier;

  PurchasesRepositoryImpl(this._purchasesConfigurator, this._logger,
      this._premiumSubscriptionNotifier);

  @override
  Future<Either<Failure, void>> configure(String userId) async {
    return Task(() => _purchasesConfigurator.configurePurchases(userId))
        .attempt()
        .mapLeftToFailure(logger: _logger)
        .run();
  }

  @override
  Future<Either<Failure, void>> login(String userId) async {
    return Task(() => Purchases.logIn(userId))
        .attempt()
        .mapLeftToFailure(logger: _logger)
        .run();
  }

  @override
  Future<Either<Failure, void>> restorePurchases() async {
    try {
      await Purchases.restorePurchases();
      await hasPremiumSubscription();
      return const Right(null);
    } on Exception catch (e) {
      _logger.e(e.toString());
      return const Left(Failure(
          "There was an issue restoring your purchases. Please try again later"));
    }
  }

  Future getCurrentOfferings() async {
    var offerings = await Purchases.getOfferings();
    if (offerings.current != null &&
        offerings.current!.availablePackages.isNotEmpty) {
      _logger.d(offerings.current!.availablePackages);
    } else {
      _logger.d("No offerings available");
    }
  }

  @override
  Future<Either<Failure, void>> purchaseAnnualPremium() async {
    try {
      var offerings = await Purchases.getOfferings();
      var currentOffering = offerings.current;
      var packageToPurchase = currentOffering!.annual!;
      await Purchases.purchasePackage(packageToPurchase);
      _premiumSubscriptionNotifier.notify(true);
      return const Right(null);
    } on Exception catch (e) {
      var message = _mapPurchasesErrors(e);
      return Left(Failure(message));
    }
  }

  @override
  Future<Either<Failure, void>> purchaseMonthlyPremium() async {
    return Task(() async {
      var offerings = await Purchases.getOfferings();
      var currentOffering = offerings.current;
      var packageToPurchase = currentOffering!.monthly!;
      await Purchases.purchasePackage(packageToPurchase);
      _premiumSubscriptionNotifier.notify(true);
      return const Right(null);
    })
        .attempt()
        .mapLeftToFailureWithMapper(
            messageMap: _mapPurchasesErrors, logger: _logger)
        .run();
  }

  @override
  Future<Either<Failure, bool>> hasPremiumSubscription() async {
    return Task(() async {
      var customerInfo = await Purchases.getCustomerInfo();
      var result = customerInfo.entitlements.active["premium"] != null ||
          customerInfo.entitlements.active["Premium"] != null;
      _premiumSubscriptionNotifier.notify(result);
      return result;
    })
        .attempt()
        .mapLeftToFailure(logger: _logger)
        .run()
        .then((value) => value as Either<Failure, bool>);
  }

  @override
  Future<Either<Failure, OfferingsInfo>> getOfferingsInfo() async {
    try {
      var offerings = await Purchases.getOfferings();
      var currentOffering = offerings.current;
      var monthly = currentOffering!.monthly!;
      var annual = currentOffering.annual!;

      var eligibility =
          await Purchases.checkTrialOrIntroductoryPriceEligibility([
        annual.storeProduct.identifier,
        monthly.storeProduct.identifier
      ]);

      bool isEligibleForTrial = _isEligibleForTrial(eligibility);

      var savings = _calculateSavings(annual, monthly);

      var offeringsInfo = OfferingsInfo(
          monthlyPrice: monthly.storeProduct.priceString,
          annualPrice: annual.storeProduct.priceString,
          isEligibleForTrial: isEligibleForTrial,
          savings: savings);
      return Right(offeringsInfo);
    } on Exception {
      return const Left(Failure(
          "There was an issue getting our current offerings. Please try again later."));
    }
  }

  bool _isEligibleForTrial(Map<String, IntroEligibility> eligibility) {
    var isEligibleForTrial = !eligibility.values.any((element) =>
        element.status ==
            IntroEligibilityStatus.introEligibilityStatusIneligible ||
        element.status == IntroEligibilityStatus.introEligibilityStatusUnknown);
    return isEligibleForTrial;
  }

  int _calculateSavings(Package annual, Package monthly) {
    final annualPrice = annual.storeProduct.price;
    final monthlyPrice = monthly.storeProduct.price;

    final double savings = (1 - (annualPrice / (monthlyPrice * 12))) * 100;

    return savings.round();
  }

  String _mapPurchasesErrors(dynamic error) {
    if (error is PlatformException) {
      var errorCode = PurchasesErrorHelper.getErrorCode(error);
      return switch (errorCode) {
        PurchasesErrorCode.purchaseCancelledError => "Purchase cancelled",
        _ =>
          "There was an issue processing your subscription. Please try again later.",
      };
    } else {
      return "There was an issue processing your subscription. Please try again later.";
    }
  }
}
