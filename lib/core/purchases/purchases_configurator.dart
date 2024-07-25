import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:purchases_flutter/purchases_flutter.dart';

@Order(-1)
@singleton
class PurchasesConfigurator {
  final String _publicGoogleSdkKey;
  final String _publicIosSdkKey;

  PurchasesConfigurator(
    @Named("RevenueCatGoogleApiKey") this._publicGoogleSdkKey,
    @Named("RevenueCatIosApiKey") this._publicIosSdkKey,
  );

  Future<Purchases> configurePurchases(String userId) async {
    PurchasesConfiguration configuration;

    await setLogging();

    var configured = await Purchases.isConfigured;

    if (configured) return Purchases();

    if (Platform.isAndroid) {
      configuration = PurchasesConfiguration(_publicGoogleSdkKey);
    } else if (Platform.isIOS) {
      configuration = PurchasesConfiguration(_publicIosSdkKey);
    } else {
      throw UnsupportedError("Unsupported platform");
    }

    configuration.appUserID = userId;

    await Purchases.configure(configuration);

    return Purchases();
  }

  Future<void> setLogging() async {
    if (kDebugMode) {
      await Purchases.setLogLevel(LogLevel.error);
    }
  }
}
