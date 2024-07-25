import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../dependency_container.dart';
import '../bloc/chat_bloc.dart';

@RoutePage(name: "ChatRouter")
class ChatRouter extends AutoRouter implements AutoRouteWrapper {
  final String idOrSlug;
  final Map<String, String> parameters;
  final String? initialMessage;
  final String? resultsTitle;
  final int? flowBlockId;
  final Widget? resultsTitleChild;
  final String? analyzingText;

  const ChatRouter(
      {super.key,
      required this.idOrSlug,
      this.parameters = const {},
      this.initialMessage,
      this.resultsTitle,
      this.flowBlockId,
      this.analyzingText,
      this.resultsTitleChild});

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => sl<ChatBloc>()
            ..add(ChatEvent.started(
                idOrSlug, parameters, initialMessage, resultsTitle,
                resultsTitleChild: resultsTitleChild,
                analyzingText: analyzingText,
                flowBlockId: flowBlockId)),
        ),
      ],
      child: this,
    );
  }
}
