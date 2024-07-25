import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';
import 'package:sizer/sizer.dart';
import 'package:wakefully_analyzer/app_router.dart';
import 'package:wakefully_analyzer/core/authentication/authenication_notifier.dart';
import 'package:wakefully_analyzer/core/authentication/bloc/authentication_bloc.dart';
import 'package:wakefully_analyzer/features/dreams/bloc/dreams_bloc.dart';
import 'package:wakefully_analyzer/features/journeys/bloc/journeys_bloc.dart';
import 'package:wakefully_analyzer/features/purchases/bloc/purchases_bloc.dart';
import 'package:wakefully_analyzer/themes/themes.dart';

import 'core/app/bloc/app_bloc.dart';
import 'dependency_container.dart';
import 'features/dream_decoder/developer_mode/bloc/developer_mode_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => sl<AuthenticationBloc>(),
        ),
        BlocProvider(
          create: (_) => sl<AppBloc>()..add(const AppEvent.started()),
        ),
        BlocProvider(lazy: false, create: (_) => sl<PurchasesBloc>()),
        BlocProvider(create: (_) => sl<DeveloperModeBloc>()),
        BlocProvider(
            create: (_) => sl<DreamsBloc>()..add(const DreamsEvent.started())),
        BlocProvider(
            create: (_) =>
                sl<JourneysBloc>()..add(const JourneysEvent.started()))
      ],
      child: KeyboardDismisser(
        child: Sizer(
          builder: (context, orientation, deviceType) => MaterialApp.router(
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            theme: lightTheme,
            supportedLocales: const [Locale("en")],
            routerConfig: sl<AppRouter>().config(
                reevaluateListenable: sl<AuthenticationNotifier>(),
                deepLinkBuilder: (deepLink) {
                  if (deepLink.path.startsWith("/deeplinks")) {
                    return deepLink;
                  }

                  return DeepLink.defaultPath;
                },
                navigatorObservers: () => [HeroController()]),
          ),
        ),
      ),
    );
  }
}
