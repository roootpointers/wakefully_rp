import 'package:flutter/material.dart';
import 'package:wakefully_analyzer/core/authentication/firebase/firebase_options_dev.dart';
import 'package:wakefully_analyzer/initialize_app.dart';
import 'package:wakefully_analyzer/dependency_container.dart';

import 'app.dart';

void main() async {
  await initialize(DefaultFirebaseOptions.currentPlatform);
  await configureDependencies("local");

  runApp(const App());
}
