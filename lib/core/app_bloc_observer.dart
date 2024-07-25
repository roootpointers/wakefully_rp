import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../features/journeys/bloc/journeys_bloc.dart';

class AppBlocObserver extends BlocObserver {
  const AppBlocObserver();

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    if (kDebugMode && bloc is! JourneysBloc) {
      log('onChange(${bloc.runtimeType}, $change)');
    }
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    if (kDebugMode) {
      log('onError(${bloc.runtimeType}, $error, $stackTrace)');
    }
    super.onError(bloc, error, stackTrace);
  }
}
