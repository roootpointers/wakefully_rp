import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:wakefully_analyzer/core/app_bloc_observer.dart';
import 'package:wakefully_analyzer/features/deep_link/initialization.dart';

import 'core/authentication/firebase/init.dart';
import 'core/hydrated_bloc_config.dart';

FutureOr<void> initialize(FirebaseOptions options) async {
  WidgetsFlutterBinding.ensureInitialized();
  await wakefullyFirebaseInit(options);
  await initializeBranch();
  HydratedBloc.storage = await buildHydratedBlocStorage();
  Bloc.observer = const AppBlocObserver();
}
