import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class PremiumSubscriptionNotifier extends ChangeNotifier {
  late bool _isPremiumSubscriber = false;

  bool get isPremiumSubscriber => _isPremiumSubscriber;

  void notify(bool newValue) {
    if (_isPremiumSubscriber == newValue) return;
    _isPremiumSubscriber = newValue;
    notifyListeners();
  }
}
