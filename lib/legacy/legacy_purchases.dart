import 'package:purchases_flutter/purchases_flutter.dart';

const freePlanName = 'Freemium';

class RevenueSubscription {
  final SubscriptionType type;
  final Package package;

  const RevenueSubscription({
    required this.type,
    required this.package,
  });

  String get priceStr => package.storeProduct.priceString;

  double get price => package.storeProduct.price;

  bool get haveFreeTrial => package.storeProduct.introductoryPrice?.price == 0;

  String? get introPriceStr {
    if (haveFreeTrial) return null;
    return package.storeProduct.introductoryPrice?.priceString;
  }

  double? get introPrice => package.storeProduct.introductoryPrice?.price;
}

enum SubscriptionType {
  oldMonthly,
  oldAnnual,
  regularMonthly,
  vipMonthly,
  vipAnnual,
  monthly,
  annually
}

extension SubscriptionTypeX on SubscriptionType {
  String get indentifier {
    switch (this) {
      case SubscriptionType.oldMonthly:
        return r'$rc_monthly';

      case SubscriptionType.oldAnnual:
        return r'$rc_annual';

      case SubscriptionType.regularMonthly:
        return 'wak_499_1m_1w0';

      case SubscriptionType.vipMonthly:
        return 'wak_999_1m_1w0';

      case SubscriptionType.vipAnnual:
        return 'wak_4999_1y_1w0';
      case SubscriptionType.monthly:
        return 'wak_499_1m';
      case SubscriptionType.annually:
        return 'wak_4499_1y';
    }
  }

  bool get forSale =>
      this == SubscriptionType.regularMonthly ||
      this == SubscriptionType.vipMonthly ||
      this == SubscriptionType.vipAnnual;

  static SubscriptionType? fromIdentifier(String identifier) {
    switch (identifier) {
      case 'monthly':
        return SubscriptionType.oldMonthly;

      case 'annual':
        return SubscriptionType.oldAnnual;

      case 'wak_499_1m_1w0':
        return SubscriptionType.regularMonthly;

      case 'wak_999_1m_1w0':
        return SubscriptionType.vipMonthly;

      case 'wak_4999_1y_1w0':
        return SubscriptionType.vipAnnual;
      case 'wak_499_1m':
        return SubscriptionType.monthly;
      case 'wak_4499_1y':
        return SubscriptionType.annually;
      default:
        return null;
    }
  }

  static String getNameFromIdentifier(String identifier) {
    switch (identifier) {
      case 'monthly':
        return 'Regular monthly';

      case 'annual':
        return 'Regular annual';

      case 'wak_499_1m_1w0':
        return 'Regular monthly';

      case 'wak_999_1m_1w0':
        return 'VIP monthly';

      case 'wak_4999_1y_1w0':
        return 'VIP annual';
      case 'wak_499_1m':
        return 'Monthly';
      case 'wak_4499_1y':
        return 'Annually';
      default:
        return identifier;
    }
  }
}

enum AccessLevel { none, regular, vip }

extension AccessLevelX on AccessLevel {
  String? get entitlementName {
    switch (this) {
      case AccessLevel.none:
        return null;
      case AccessLevel.regular:
        return 'Premium';
      case AccessLevel.vip:
        return 'VIP';
    }
  }

  bool get isRegularOrVip =>
      this == AccessLevel.regular || this == AccessLevel.vip;

  bool get isVip => this == AccessLevel.vip;
}
