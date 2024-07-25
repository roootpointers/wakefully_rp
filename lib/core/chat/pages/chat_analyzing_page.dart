import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wakefully_analyzer/core/action_state.dart';
import 'package:wakefully_analyzer/features/dream_decoder/analyzing_view.dart';

import '../../../app_router.gr.dart';
import '../bloc/chat_bloc.dart';

@RoutePage()
class ChatAnalyzingPage extends StatelessWidget {
  final String? textOverride;
  const ChatAnalyzingPage({super.key, this.textOverride});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ChatBloc, ChatState>(
      listener: (context, state) {
        switch (state.chatStatus) {
          case ActionStateIdle():
          case ActionStateInProgress():
            break;
          case ActionStateSuccess():
          case ActionStateFailure():
            context.router.replaceAll([const ChatResultsRoute()]);
            break;
        }
      },
      child: Scaffold(body: BlocBuilder<ChatBloc, ChatState>(
        builder: (context, state) {
          var text = textOverride ?? state.analyzingText;
          return AnalyzingView(text);
        },
      )),
    );
  }
}
