import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_branch_sdk/flutter_branch_sdk.dart';
import 'package:injectable/injectable.dart';
import 'package:wakefully_analyzer/app_router.gr.dart';
import 'package:wakefully_analyzer/core/app/bloc/app_bloc.dart';
import 'package:wakefully_analyzer/core/authentication/bloc/authentication_bloc.dart';
import 'package:wakefully_analyzer/features/deep_link/deep_link_params.dart';
import 'package:wakelock_plus/wakelock_plus.dart';

@singleton
@AutoRouterConfig()
class AppRouter extends $AppRouter implements AutoRouteGuard {
  final AuthenticationBloc _authenticationBloc;
  final AppBloc _appBloc;

  AppRouter(this._authenticationBloc, this._appBloc) {
    listenDeepLinks();
  }

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: "/debug",
          page: DebugRoute.page,
        ),
        AutoRoute(
          maintainState: true,
          page: HomeRoute.page,
          initial: _appBloc.state.onboarded,
          children: [
            AutoRoute(
                path: "dream-journal",
                page: DreamJournalRouter.page,
                children: const []),
            AutoRoute(
                page: DreamsRouter.page,
                path: "dreams",
                maintainState: true,
                children: [
                  AutoRoute(
                    path: '',
                    page: DreamsRoute.page,
                    initial: true,
                  ),
                ]),
            AutoRoute(
                path: "profile",
                page: ProfileRouter.page,
                maintainState: false,
                children: [
                  AutoRoute(page: ProfileRoute.page, initial: true),
                ]),
            AutoRoute(
              page: ChatRouter.page,
              children: [
                AutoRoute(page: ChatRoute.page, initial: true),
                AutoRoute(
                  page: ChatAnalyzingRoute.page,
                ),
                AutoRoute(
                  page: ChatResultsRoute.page,
                ),
              ],
            ),
          ],
        ),
        AutoRoute(
            page: DreamDetailsRoute.page,
            path: "/dream/:id",
            fullscreenDialog: true),
        AutoRoute(
            page: AddDreamRoute.page,
            path: "/journal/add-dream",
            fullscreenDialog: true),
        AutoRoute(
          page: BlobDetailsRoute.page,
          path: "/details",
        ),
        AutoRoute(
          maintainState: true,
          page: BasicDreamDecoderRouter.page,
          children: [
            CustomRoute(
              path: "dream-types",
              page: DreamTypesRoute.page,
              initial: true,
              transitionsBuilder: TransitionsBuilders.slideBottom,
            ),
            AutoRoute(
              page: ChatRouter.page,
              children: [
                AutoRoute(page: ChatRoute.page, initial: true),
                AutoRoute(
                  page: ChatAnalyzingRoute.page,
                ),
                AutoRoute(
                  page: ChatResultsRoute.page,
                ),
              ],
            ),
          ],
        ),
        AutoRoute(page: PremiumDreamDecoderRouter.page, children: [
          AutoRoute(
            page: ChatRouter.page,
            children: [
              AutoRoute(page: ChatRoute.page, initial: true),
              AutoRoute(
                page: ChatAnalyzingRoute.page,
              ),
              AutoRoute(
                page: ChatResultsRoute.page,
              ),
            ],
          ),
        ]),
        AutoRoute(
          page: ChatRouter.page,
          children: [
            AutoRoute(page: ChatRoute.page, initial: true),
            AutoRoute(
              page: ChatAnalyzingRoute.page,
            ),
            AutoRoute(
              page: ChatResultsRoute.page,
            ),
          ],
        ),
        AutoRoute(
            path: "/nightmare",
            page: NightmareNavigatorRouter.page,
            children: [
              AutoRoute(
                page: ChatRouter.page,
                children: [
                  AutoRoute(page: ChatRoute.page, initial: true),
                  AutoRoute(
                    page: ChatAnalyzingRoute.page,
                  ),
                  AutoRoute(
                    page: ChatResultsRoute.page,
                  ),
                ],
              ),
            ]),
        AutoRoute(page: NightmareAddDreamRoute.page),
        AutoRoute(page: PersonalityQuizAddDreamRoute.page),
        AutoRoute(page: FlippedScriptRoute.page),
        AutoRoute(
          path: "/login",
          page: LoginRoute.page,
          keepHistory: false,
        ),
        CustomRoute(
          page: PaywallRoute.page,
          fullscreenDialog: true,
          transitionsBuilder: TransitionsBuilders.slideBottom,
        ),
        AutoRoute(
            page: OnBoardingAnimation.page,
            keepHistory: false,
            initial: !_appBloc.state.onboarded),
        AutoRoute(
            page: DeepLinkRoute.page,
            path: "/deeplinks/:flowId/:journeyId",
            keepHistory: false),
        AutoRoute(
          page: CodeRedemptionRoute.page,
          path: "/redeem/:code",
          keepHistory: false,
        ),
      ];

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    final isAuthenticated = _authenticationBloc.state is Authenticated;

    WakelockPlus.disable();

    if (isAuthenticated ||
        resolver.route.name == LoginRoute.name ||
        resolver.route.name == OnBoardingAnimation.name) {
      resolver.next(true);
    } else {
      resolver.redirect(
          LoginRoute(onLoginResult: (result) => resolver.next(result)));
    }
  }

  StreamSubscription<Map>? streamSubscription;

  void listenDeepLinks() async {
    streamSubscription = FlutterBranchSdk.listSession().listen((event) {
      if (event.containsKey('+clicked_branch_link') &&
          event['+clicked_branch_link'] == true) {
        if (event.containsKey("action")) {
          var action = event["action"];
          if (action == "results") {
            _handleResultsDeepLink(event);
          } else if (action == "navigation") {
            _handleNavigationDeepLink(event);
          } else if (action == "code_redemption") {
            _handleCodeRedemptionDeepLink(event);
          }
        }
      }
    });
  }

  void _handleCodeRedemptionDeepLink(Map<dynamic, dynamic> event) {
    var code = event["code"];
    push(CodeRedemptionRoute(code: code));
  }

  void _handleResultsDeepLink(Map<dynamic, dynamic> event) {
    var flowId = event["flow_id"];
    var parameters = event["parameters"] as Map<dynamic, dynamic>;
    var nextFlowBlockId = event["next_flow_block_id"];
    push(DeepLinkRoute(
        params: DeepLinkParams(
            flowId,
            parameters.map(
                (key, value) => MapEntry(key.toString(), value.toString())),
            nextFlowBlockId)));
  }

  void _handleNavigationDeepLink(Map<dynamic, dynamic> event) {
    var route = event["route"];
    switch (route) {
      case "dream_decoder_basic":
        push(const BasicDreamDecoderRouter());
        break;
      case "dream_decoder_premium":
        push(const PremiumDreamDecoderRouter());
        break;
      case "nightmare_navigator":
        push(const NightmareNavigatorRouter());
        break;
      case "personality_quiz":
        push(const PersonalityQuizAddDreamRoute());
        break;
      case "daily_intentions":
        var hasCompleted = _appBloc.state.hasCompletedDailyIntentionJournal;
        var initialFlowBlock = hasCompleted ? 59 : 52;
        var firstName = _authenticationBloc.authenticatedUser!.firstName;

        push(ChatRouter(
            idOrSlug: "daily_intention_journal",
            flowBlockId: initialFlowBlock,
            parameters: {"first_name": firstName},
            resultsTitle: "Daily Intention"));
        break;
    }
  }
}
