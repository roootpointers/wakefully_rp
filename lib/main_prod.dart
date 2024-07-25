import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:wakefully_analyzer/core/authentication/firebase/firebase_options_prod.dart';
import 'package:wakefully_analyzer/dependency_container.dart';
import 'package:wakefully_analyzer/initialize_app.dart';

import 'app.dart';

void main() async {
  await initialize(DefaultFirebaseOptions.currentPlatform);
  await configureDependencies(Environment.prod);

  runApp(const App());
}
