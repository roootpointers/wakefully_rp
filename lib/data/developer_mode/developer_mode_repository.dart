import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';

import '../purchases/offerings_info.dart';

@singleton
class DeveloperModeRepository {
  late bool enabled = false;
  ValueNotifier<bool> hasPremiumSubscription = ValueNotifier(false);

  OfferingsInfo get offeringsInfo => const OfferingsInfo(
        monthlyPrice: "0.99",
        annualPrice: '2.00',
        savings: 10,
        isEligibleForTrial: true,
      );
}
