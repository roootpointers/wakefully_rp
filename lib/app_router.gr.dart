// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i30;
import 'package:flutter/material.dart' as _i31;
import 'package:wakefully_analyzer/core/chat/pages/chat_analyzing_page.dart'
    as _i5;
import 'package:wakefully_analyzer/core/chat/pages/chat_page.dart' as _i6;
import 'package:wakefully_analyzer/core/chat/pages/chat_results_page.dart'
    as _i7;
import 'package:wakefully_analyzer/core/chat/pages/chat_router.dart' as _i8;
import 'package:wakefully_analyzer/core/home/home_page.dart' as _i18;
import 'package:wakefully_analyzer/data/contracts/blob.dart' as _i32;
import 'package:wakefully_analyzer/data/contracts/script_flip.dart' as _i34;
import 'package:wakefully_analyzer/debug_page.dart' as _i10;
import 'package:wakefully_analyzer/features/code_redemption/code_redemption_page.dart'
    as _i9;
import 'package:wakefully_analyzer/features/deep_link/deep_link_page.dart'
    as _i11;
import 'package:wakefully_analyzer/features/deep_link/deep_link_params.dart'
    as _i33;
import 'package:wakefully_analyzer/features/dream_decoder/basic/pages/basic_dream_decoder_deeplink_results_page.dart'
    as _i2;
import 'package:wakefully_analyzer/features/dream_decoder/basic/pages/basic_dream_decoder_page.dart'
    as _i3;
import 'package:wakefully_analyzer/features/dream_decoder/basic/pages/dream_types_page.dart'
    as _i14;
import 'package:wakefully_analyzer/features/dream_decoder/premium/pages/premium_dream_decoder_router.dart'
    as _i27;
import 'package:wakefully_analyzer/features/dreams/dreams_page.dart' as _i15;
import 'package:wakefully_analyzer/features/dreams/dreams_tab_page.dart'
    as _i16;
import 'package:wakefully_analyzer/features/journal/add_dream/add_dream_page.dart'
    as _i1;
import 'package:wakefully_analyzer/features/journal/dream_details_page.dart'
    as _i12;
import 'package:wakefully_analyzer/features/journal/dream_journal_page.dart'
    as _i13;
import 'package:wakefully_analyzer/features/journeys/blob_details_page.dart'
    as _i4;
import 'package:wakefully_analyzer/features/journeys/journeys_page.dart'
    as _i19;
import 'package:wakefully_analyzer/features/login/login_page.dart' as _i20;
import 'package:wakefully_analyzer/features/nightmare_navigator/flipped_script_page.dart'
    as _i17;
import 'package:wakefully_analyzer/features/nightmare_navigator/nightmare_add_dream_page.dart'
    as _i21;
import 'package:wakefully_analyzer/features/nightmare_navigator/nightmare_navigator_page.dart'
    as _i22;
import 'package:wakefully_analyzer/features/personality_quiz/personality_quiz_add_dream_page.dart'
    as _i25;
import 'package:wakefully_analyzer/features/personality_quiz/personality_quiz_deep_link_results.dart'
    as _i26;
import 'package:wakefully_analyzer/features/profile/profile_page.dart' as _i28;
import 'package:wakefully_analyzer/features/profile/profile_tab_page.dart'
    as _i29;
import 'package:wakefully_analyzer/features/purchases/paywall_page.dart'
    as _i24;
import 'package:wakefully_analyzer/legacy/widgets/onboarding_animation.dart'
    as _i23;

abstract class $AppRouter extends _i30.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i30.PageFactory> pagesMap = {
    AddDreamRoute.name: (routeData) {
      return _i30.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AddDreamPage(),
      );
    },
    BasicDreamDecoderDeepLinkResultsRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<BasicDreamDecoderDeepLinkResultsRouteArgs>(
          orElse: () => BasicDreamDecoderDeepLinkResultsRouteArgs(
              id: pathParams.getString('id')));
      return _i30.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.BasicDreamDecoderDeepLinkResultsPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    BasicDreamDecoderRouter.name: (routeData) {
      return _i30.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i30.WrappedRoute(child: const _i3.BasicDreamDecoderPage()),
      );
    },
    BlobDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<BlobDetailsRouteArgs>();
      return _i30.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.BlobDetailsPage(
          key: args.key,
          blob: args.blob,
        ),
      );
    },
    ChatAnalyzingRoute.name: (routeData) {
      final args = routeData.argsAs<ChatAnalyzingRouteArgs>(
          orElse: () => const ChatAnalyzingRouteArgs());
      return _i30.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.ChatAnalyzingPage(
          key: args.key,
          textOverride: args.textOverride,
        ),
      );
    },
    ChatRoute.name: (routeData) {
      return _i30.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.ChatPage(),
      );
    },
    ChatResultsRoute.name: (routeData) {
      return _i30.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.ChatResultsPage(),
      );
    },
    ChatRouter.name: (routeData) {
      final args = routeData.argsAs<ChatRouterArgs>();
      return _i30.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i30.WrappedRoute(
            child: _i8.ChatRouter(
          key: args.key,
          idOrSlug: args.idOrSlug,
          parameters: args.parameters,
          initialMessage: args.initialMessage,
          resultsTitle: args.resultsTitle,
          flowBlockId: args.flowBlockId,
          analyzingText: args.analyzingText,
          resultsTitleChild: args.resultsTitleChild,
        )),
      );
    },
    CodeRedemptionRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<CodeRedemptionRouteArgs>(
          orElse: () =>
              CodeRedemptionRouteArgs(code: pathParams.getString('code')));
      return _i30.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.CodeRedemptionPage(
          key: args.key,
          code: args.code,
        ),
      );
    },
    DebugRoute.name: (routeData) {
      return _i30.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.DebugPage(),
      );
    },
    DeepLinkRoute.name: (routeData) {
      final args = routeData.argsAs<DeepLinkRouteArgs>();
      return _i30.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i30.WrappedRoute(
            child: _i11.DeepLinkPage(
          key: args.key,
          params: args.params,
        )),
      );
    },
    DreamDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<DreamDetailsRouteArgs>();
      return _i30.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i30.WrappedRoute(
            child: _i12.DreamDetailsPage(
          args.id,
          key: args.key,
        )),
      );
    },
    DreamJournalRouter.name: (routeData) {
      return _i30.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.DreamJournalPage(),
      );
    },
    DreamTypesRoute.name: (routeData) {
      return _i30.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.DreamTypesPage(),
      );
    },
    DreamsRoute.name: (routeData) {
      return _i30.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.DreamsPage(),
      );
    },
    DreamsRouter.name: (routeData) {
      return _i30.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i30.WrappedRoute(child: const _i16.DreamsTabPage()),
      );
    },
    FlippedScriptRoute.name: (routeData) {
      final args = routeData.argsAs<FlippedScriptRouteArgs>();
      return _i30.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i17.FlippedScriptPage(
          args.scriptFlip,
          key: args.key,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return _i30.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i30.WrappedRoute(child: const _i18.HomePage()),
      );
    },
    JourneysRouter.name: (routeData) {
      return _i30.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i19.JourneysPage(),
      );
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>();
      return _i30.AutoRoutePage<bool>(
        routeData: routeData,
        child: _i30.WrappedRoute(
            child: _i20.LoginPage(
          key: args.key,
          onLoginResult: args.onLoginResult,
        )),
      );
    },
    NightmareAddDreamRoute.name: (routeData) {
      return _i30.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i21.NightmareAddDreamPage(),
      );
    },
    NightmareNavigatorRouter.name: (routeData) {
      return _i30.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i22.NightmareNavigatorPage(),
      );
    },
    OnBoardingAnimation.name: (routeData) {
      return _i30.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i23.OnBoardingAnimation(),
      );
    },
    PaywallRoute.name: (routeData) {
      return _i30.AutoRoutePage<bool>(
        routeData: routeData,
        child: _i30.WrappedRoute(child: const _i24.PaywallPage()),
      );
    },
    PersonalityQuizAddDreamRoute.name: (routeData) {
      return _i30.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i25.PersonalityQuizAddDreamPage(),
      );
    },
    PersonalityQuizDeepLinkResultsRoute.name: (routeData) {
      return _i30.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i26.PersonalityQuizDeepLinkResultsPage(),
      );
    },
    PremiumDreamDecoderRouter.name: (routeData) {
      return _i30.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i30.WrappedRoute(child: const _i27.PremiumDreamDecoderPage()),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i30.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i28.ProfilePage(),
      );
    },
    ProfileRouter.name: (routeData) {
      return _i30.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i30.WrappedRoute(child: const _i29.ProfileTabPage()),
      );
    },
  };
}

/// generated route for
/// [_i1.AddDreamPage]
class AddDreamRoute extends _i30.PageRouteInfo<void> {
  const AddDreamRoute({List<_i30.PageRouteInfo>? children})
      : super(
          AddDreamRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddDreamRoute';

  static const _i30.PageInfo<void> page = _i30.PageInfo<void>(name);
}

/// generated route for
/// [_i2.BasicDreamDecoderDeepLinkResultsPage]
class BasicDreamDecoderDeepLinkResultsRoute
    extends _i30.PageRouteInfo<BasicDreamDecoderDeepLinkResultsRouteArgs> {
  BasicDreamDecoderDeepLinkResultsRoute({
    _i31.Key? key,
    required String id,
    List<_i30.PageRouteInfo>? children,
  }) : super(
          BasicDreamDecoderDeepLinkResultsRoute.name,
          args: BasicDreamDecoderDeepLinkResultsRouteArgs(
            key: key,
            id: id,
          ),
          rawPathParams: {'id': id},
          initialChildren: children,
        );

  static const String name = 'BasicDreamDecoderDeepLinkResultsRoute';

  static const _i30.PageInfo<BasicDreamDecoderDeepLinkResultsRouteArgs> page =
      _i30.PageInfo<BasicDreamDecoderDeepLinkResultsRouteArgs>(name);
}

class BasicDreamDecoderDeepLinkResultsRouteArgs {
  const BasicDreamDecoderDeepLinkResultsRouteArgs({
    this.key,
    required this.id,
  });

  final _i31.Key? key;

  final String id;

  @override
  String toString() {
    return 'BasicDreamDecoderDeepLinkResultsRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i3.BasicDreamDecoderPage]
class BasicDreamDecoderRouter extends _i30.PageRouteInfo<void> {
  const BasicDreamDecoderRouter({List<_i30.PageRouteInfo>? children})
      : super(
          BasicDreamDecoderRouter.name,
          initialChildren: children,
        );

  static const String name = 'BasicDreamDecoderRouter';

  static const _i30.PageInfo<void> page = _i30.PageInfo<void>(name);
}

/// generated route for
/// [_i4.BlobDetailsPage]
class BlobDetailsRoute extends _i30.PageRouteInfo<BlobDetailsRouteArgs> {
  BlobDetailsRoute({
    _i31.Key? key,
    required _i32.Blob blob,
    List<_i30.PageRouteInfo>? children,
  }) : super(
          BlobDetailsRoute.name,
          args: BlobDetailsRouteArgs(
            key: key,
            blob: blob,
          ),
          initialChildren: children,
        );

  static const String name = 'BlobDetailsRoute';

  static const _i30.PageInfo<BlobDetailsRouteArgs> page =
      _i30.PageInfo<BlobDetailsRouteArgs>(name);
}

class BlobDetailsRouteArgs {
  const BlobDetailsRouteArgs({
    this.key,
    required this.blob,
  });

  final _i31.Key? key;

  final _i32.Blob blob;

  @override
  String toString() {
    return 'BlobDetailsRouteArgs{key: $key, blob: $blob}';
  }
}

/// generated route for
/// [_i5.ChatAnalyzingPage]
class ChatAnalyzingRoute extends _i30.PageRouteInfo<ChatAnalyzingRouteArgs> {
  ChatAnalyzingRoute({
    _i31.Key? key,
    String? textOverride,
    List<_i30.PageRouteInfo>? children,
  }) : super(
          ChatAnalyzingRoute.name,
          args: ChatAnalyzingRouteArgs(
            key: key,
            textOverride: textOverride,
          ),
          initialChildren: children,
        );

  static const String name = 'ChatAnalyzingRoute';

  static const _i30.PageInfo<ChatAnalyzingRouteArgs> page =
      _i30.PageInfo<ChatAnalyzingRouteArgs>(name);
}

class ChatAnalyzingRouteArgs {
  const ChatAnalyzingRouteArgs({
    this.key,
    this.textOverride,
  });

  final _i31.Key? key;

  final String? textOverride;

  @override
  String toString() {
    return 'ChatAnalyzingRouteArgs{key: $key, textOverride: $textOverride}';
  }
}

/// generated route for
/// [_i6.ChatPage]
class ChatRoute extends _i30.PageRouteInfo<void> {
  const ChatRoute({List<_i30.PageRouteInfo>? children})
      : super(
          ChatRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChatRoute';

  static const _i30.PageInfo<void> page = _i30.PageInfo<void>(name);
}

/// generated route for
/// [_i7.ChatResultsPage]
class ChatResultsRoute extends _i30.PageRouteInfo<void> {
  const ChatResultsRoute({List<_i30.PageRouteInfo>? children})
      : super(
          ChatResultsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChatResultsRoute';

  static const _i30.PageInfo<void> page = _i30.PageInfo<void>(name);
}

/// generated route for
/// [_i8.ChatRouter]
class ChatRouter extends _i30.PageRouteInfo<ChatRouterArgs> {
  ChatRouter({
    _i31.Key? key,
    required String idOrSlug,
    Map<String, String> parameters = const {},
    String? initialMessage,
    String? resultsTitle,
    int? flowBlockId,
    String? analyzingText,
    _i31.Widget? resultsTitleChild,
    List<_i30.PageRouteInfo>? children,
  }) : super(
          ChatRouter.name,
          args: ChatRouterArgs(
            key: key,
            idOrSlug: idOrSlug,
            parameters: parameters,
            initialMessage: initialMessage,
            resultsTitle: resultsTitle,
            flowBlockId: flowBlockId,
            analyzingText: analyzingText,
            resultsTitleChild: resultsTitleChild,
          ),
          initialChildren: children,
        );

  static const String name = 'ChatRouter';

  static const _i30.PageInfo<ChatRouterArgs> page =
      _i30.PageInfo<ChatRouterArgs>(name);
}

class ChatRouterArgs {
  const ChatRouterArgs({
    this.key,
    required this.idOrSlug,
    this.parameters = const {},
    this.initialMessage,
    this.resultsTitle,
    this.flowBlockId,
    this.analyzingText,
    this.resultsTitleChild,
  });

  final _i31.Key? key;

  final String idOrSlug;

  final Map<String, String> parameters;

  final String? initialMessage;

  final String? resultsTitle;

  final int? flowBlockId;

  final String? analyzingText;

  final _i31.Widget? resultsTitleChild;

  @override
  String toString() {
    return 'ChatRouterArgs{key: $key, idOrSlug: $idOrSlug, parameters: $parameters, initialMessage: $initialMessage, resultsTitle: $resultsTitle, flowBlockId: $flowBlockId, analyzingText: $analyzingText, resultsTitleChild: $resultsTitleChild}';
  }
}

/// generated route for
/// [_i9.CodeRedemptionPage]
class CodeRedemptionRoute extends _i30.PageRouteInfo<CodeRedemptionRouteArgs> {
  CodeRedemptionRoute({
    _i31.Key? key,
    required String code,
    List<_i30.PageRouteInfo>? children,
  }) : super(
          CodeRedemptionRoute.name,
          args: CodeRedemptionRouteArgs(
            key: key,
            code: code,
          ),
          rawPathParams: {'code': code},
          initialChildren: children,
        );

  static const String name = 'CodeRedemptionRoute';

  static const _i30.PageInfo<CodeRedemptionRouteArgs> page =
      _i30.PageInfo<CodeRedemptionRouteArgs>(name);
}

class CodeRedemptionRouteArgs {
  const CodeRedemptionRouteArgs({
    this.key,
    required this.code,
  });

  final _i31.Key? key;

  final String code;

  @override
  String toString() {
    return 'CodeRedemptionRouteArgs{key: $key, code: $code}';
  }
}

/// generated route for
/// [_i10.DebugPage]
class DebugRoute extends _i30.PageRouteInfo<void> {
  const DebugRoute({List<_i30.PageRouteInfo>? children})
      : super(
          DebugRoute.name,
          initialChildren: children,
        );

  static const String name = 'DebugRoute';

  static const _i30.PageInfo<void> page = _i30.PageInfo<void>(name);
}

/// generated route for
/// [_i11.DeepLinkPage]
class DeepLinkRoute extends _i30.PageRouteInfo<DeepLinkRouteArgs> {
  DeepLinkRoute({
    _i31.Key? key,
    required _i33.DeepLinkParams params,
    List<_i30.PageRouteInfo>? children,
  }) : super(
          DeepLinkRoute.name,
          args: DeepLinkRouteArgs(
            key: key,
            params: params,
          ),
          initialChildren: children,
        );

  static const String name = 'DeepLinkRoute';

  static const _i30.PageInfo<DeepLinkRouteArgs> page =
      _i30.PageInfo<DeepLinkRouteArgs>(name);
}

class DeepLinkRouteArgs {
  const DeepLinkRouteArgs({
    this.key,
    required this.params,
  });

  final _i31.Key? key;

  final _i33.DeepLinkParams params;

  @override
  String toString() {
    return 'DeepLinkRouteArgs{key: $key, params: $params}';
  }
}

/// generated route for
/// [_i12.DreamDetailsPage]
class DreamDetailsRoute extends _i30.PageRouteInfo<DreamDetailsRouteArgs> {
  DreamDetailsRoute({
    required String id,
    _i31.Key? key,
    List<_i30.PageRouteInfo>? children,
  }) : super(
          DreamDetailsRoute.name,
          args: DreamDetailsRouteArgs(
            id: id,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'DreamDetailsRoute';

  static const _i30.PageInfo<DreamDetailsRouteArgs> page =
      _i30.PageInfo<DreamDetailsRouteArgs>(name);
}

class DreamDetailsRouteArgs {
  const DreamDetailsRouteArgs({
    required this.id,
    this.key,
  });

  final String id;

  final _i31.Key? key;

  @override
  String toString() {
    return 'DreamDetailsRouteArgs{id: $id, key: $key}';
  }
}

/// generated route for
/// [_i13.DreamJournalPage]
class DreamJournalRouter extends _i30.PageRouteInfo<void> {
  const DreamJournalRouter({List<_i30.PageRouteInfo>? children})
      : super(
          DreamJournalRouter.name,
          initialChildren: children,
        );

  static const String name = 'DreamJournalRouter';

  static const _i30.PageInfo<void> page = _i30.PageInfo<void>(name);
}

/// generated route for
/// [_i14.DreamTypesPage]
class DreamTypesRoute extends _i30.PageRouteInfo<void> {
  const DreamTypesRoute({List<_i30.PageRouteInfo>? children})
      : super(
          DreamTypesRoute.name,
          initialChildren: children,
        );

  static const String name = 'DreamTypesRoute';

  static const _i30.PageInfo<void> page = _i30.PageInfo<void>(name);
}

/// generated route for
/// [_i15.DreamsPage]
class DreamsRoute extends _i30.PageRouteInfo<void> {
  const DreamsRoute({List<_i30.PageRouteInfo>? children})
      : super(
          DreamsRoute.name,
          initialChildren: children,
        );

  static const String name = 'DreamsRoute';

  static const _i30.PageInfo<void> page = _i30.PageInfo<void>(name);
}

/// generated route for
/// [_i16.DreamsTabPage]
class DreamsRouter extends _i30.PageRouteInfo<void> {
  const DreamsRouter({List<_i30.PageRouteInfo>? children})
      : super(
          DreamsRouter.name,
          initialChildren: children,
        );

  static const String name = 'DreamsRouter';

  static const _i30.PageInfo<void> page = _i30.PageInfo<void>(name);
}

/// generated route for
/// [_i17.FlippedScriptPage]
class FlippedScriptRoute extends _i30.PageRouteInfo<FlippedScriptRouteArgs> {
  FlippedScriptRoute({
    required _i34.ScriptFlip scriptFlip,
    _i31.Key? key,
    List<_i30.PageRouteInfo>? children,
  }) : super(
          FlippedScriptRoute.name,
          args: FlippedScriptRouteArgs(
            scriptFlip: scriptFlip,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'FlippedScriptRoute';

  static const _i30.PageInfo<FlippedScriptRouteArgs> page =
      _i30.PageInfo<FlippedScriptRouteArgs>(name);
}

class FlippedScriptRouteArgs {
  const FlippedScriptRouteArgs({
    required this.scriptFlip,
    this.key,
  });

  final _i34.ScriptFlip scriptFlip;

  final _i31.Key? key;

  @override
  String toString() {
    return 'FlippedScriptRouteArgs{scriptFlip: $scriptFlip, key: $key}';
  }
}

/// generated route for
/// [_i18.HomePage]
class HomeRoute extends _i30.PageRouteInfo<void> {
  const HomeRoute({List<_i30.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i30.PageInfo<void> page = _i30.PageInfo<void>(name);
}

/// generated route for
/// [_i19.JourneysPage]
class JourneysRouter extends _i30.PageRouteInfo<void> {
  const JourneysRouter({List<_i30.PageRouteInfo>? children})
      : super(
          JourneysRouter.name,
          initialChildren: children,
        );

  static const String name = 'JourneysRouter';

  static const _i30.PageInfo<void> page = _i30.PageInfo<void>(name);
}

/// generated route for
/// [_i20.LoginPage]
class LoginRoute extends _i30.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    _i31.Key? key,
    required void Function(bool) onLoginResult,
    List<_i30.PageRouteInfo>? children,
  }) : super(
          LoginRoute.name,
          args: LoginRouteArgs(
            key: key,
            onLoginResult: onLoginResult,
          ),
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i30.PageInfo<LoginRouteArgs> page =
      _i30.PageInfo<LoginRouteArgs>(name);
}

class LoginRouteArgs {
  const LoginRouteArgs({
    this.key,
    required this.onLoginResult,
  });

  final _i31.Key? key;

  final void Function(bool) onLoginResult;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key, onLoginResult: $onLoginResult}';
  }
}

/// generated route for
/// [_i21.NightmareAddDreamPage]
class NightmareAddDreamRoute extends _i30.PageRouteInfo<void> {
  const NightmareAddDreamRoute({List<_i30.PageRouteInfo>? children})
      : super(
          NightmareAddDreamRoute.name,
          initialChildren: children,
        );

  static const String name = 'NightmareAddDreamRoute';

  static const _i30.PageInfo<void> page = _i30.PageInfo<void>(name);
}

/// generated route for
/// [_i22.NightmareNavigatorPage]
class NightmareNavigatorRouter extends _i30.PageRouteInfo<void> {
  const NightmareNavigatorRouter({List<_i30.PageRouteInfo>? children})
      : super(
          NightmareNavigatorRouter.name,
          initialChildren: children,
        );

  static const String name = 'NightmareNavigatorRouter';

  static const _i30.PageInfo<void> page = _i30.PageInfo<void>(name);
}

/// generated route for
/// [_i23.OnBoardingAnimation]
class OnBoardingAnimation extends _i30.PageRouteInfo<void> {
  const OnBoardingAnimation({List<_i30.PageRouteInfo>? children})
      : super(
          OnBoardingAnimation.name,
          initialChildren: children,
        );

  static const String name = 'OnBoardingAnimation';

  static const _i30.PageInfo<void> page = _i30.PageInfo<void>(name);
}

/// generated route for
/// [_i24.PaywallPage]
class PaywallRoute extends _i30.PageRouteInfo<void> {
  const PaywallRoute({List<_i30.PageRouteInfo>? children})
      : super(
          PaywallRoute.name,
          initialChildren: children,
        );

  static const String name = 'PaywallRoute';

  static const _i30.PageInfo<void> page = _i30.PageInfo<void>(name);
}

/// generated route for
/// [_i25.PersonalityQuizAddDreamPage]
class PersonalityQuizAddDreamRoute extends _i30.PageRouteInfo<void> {
  const PersonalityQuizAddDreamRoute({List<_i30.PageRouteInfo>? children})
      : super(
          PersonalityQuizAddDreamRoute.name,
          initialChildren: children,
        );

  static const String name = 'PersonalityQuizAddDreamRoute';

  static const _i30.PageInfo<void> page = _i30.PageInfo<void>(name);
}

/// generated route for
/// [_i26.PersonalityQuizDeepLinkResultsPage]
class PersonalityQuizDeepLinkResultsRoute extends _i30.PageRouteInfo<void> {
  const PersonalityQuizDeepLinkResultsRoute(
      {List<_i30.PageRouteInfo>? children})
      : super(
          PersonalityQuizDeepLinkResultsRoute.name,
          initialChildren: children,
        );

  static const String name = 'PersonalityQuizDeepLinkResultsRoute';

  static const _i30.PageInfo<void> page = _i30.PageInfo<void>(name);
}

/// generated route for
/// [_i27.PremiumDreamDecoderPage]
class PremiumDreamDecoderRouter extends _i30.PageRouteInfo<void> {
  const PremiumDreamDecoderRouter({List<_i30.PageRouteInfo>? children})
      : super(
          PremiumDreamDecoderRouter.name,
          initialChildren: children,
        );

  static const String name = 'PremiumDreamDecoderRouter';

  static const _i30.PageInfo<void> page = _i30.PageInfo<void>(name);
}

/// generated route for
/// [_i28.ProfilePage]
class ProfileRoute extends _i30.PageRouteInfo<void> {
  const ProfileRoute({List<_i30.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i30.PageInfo<void> page = _i30.PageInfo<void>(name);
}

/// generated route for
/// [_i29.ProfileTabPage]
class ProfileRouter extends _i30.PageRouteInfo<void> {
  const ProfileRouter({List<_i30.PageRouteInfo>? children})
      : super(
          ProfileRouter.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRouter';

  static const _i30.PageInfo<void> page = _i30.PageInfo<void>(name);
}
