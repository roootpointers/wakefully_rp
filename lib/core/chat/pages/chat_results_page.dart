import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:styled_text/styled_text.dart';
import 'package:wakefully_analyzer/app_router.gr.dart';
import 'package:wakefully_analyzer/core/action_state.dart';
import 'package:wakefully_analyzer/features/daily_intentions/daily_intentions_results_actions.dart';
import 'package:wakefully_analyzer/features/dream_decoder/dream_decoder_results_actions.dart';
import 'package:wakefully_analyzer/features/nightmare_navigator/nightmare_navigator_results_actions.dart';
import 'package:wakefully_analyzer/legacy/widgets/wakefully_progress_indicator.dart';
import 'package:wakefully_analyzer/utils/style_text_tags.dart';
import 'package:wakelock_plus/wakelock_plus.dart';

import '../../../features/dreams/bloc/dreams_bloc.dart';
import '../../../features/personality_quiz/personality_quiz_results_actions.dart';
import '../../../legacy/custom_colors.dart';
import '../../../widgets/logo.dart';
import '../../app/widgets/title_bar.dart';
import '../bloc/chat_bloc.dart';

@RoutePage()
class ChatResultsPage extends StatelessWidget {
  const ChatResultsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final resultsTextStyle = GoogleFonts.openSans(
        fontSize: 16, fontWeight: FontWeight.w600, color: CustomColors.black);

    WakelockPlus.enable();
    return PopScope(
      onPopInvoked: (popped) {
        context.router.replaceAll([const HomeRoute()]);
      },
      child: Container(
        color: CustomColors.darkBlue_0,
        child: SafeArea(
          child: Scaffold(
            backgroundColor: CustomColors.darkBlue_0,
            body: BlocListener<DreamsBloc, DreamsState>(
              listener: (context, state) {
                switch (state.dreamSaveStatus) {
                  case ActionStateSuccess():
                    context.router.popForced();
                    break;
                  case ActionStateFailure():
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("There was an issue saving your dream"),
                      ),
                    );
                    break;
                  case ActionStateIdle() || ActionStateInProgress():
                    break;
                }
              },
              child: Container(
                color: CustomColors.darkBlue_0,
                child: CustomScrollView(
                  slivers: [
                    SliverFillRemaining(
                      hasScrollBody: false,
                      child: BlocBuilder<ChatBloc, ChatState>(
                        builder: (context, state) {
                          return switch (state.chatStatus) {
                            ActionStateSuccess() => Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, right: 20, bottom: 20),
                                child: Column(
                                  children: [
                                    TitleBar(
                                      title: state.resultsTitle,
                                      showBackButton: false,
                                      child: state.resultsTitleChild,
                                    ),
                                    const SizedBox(height: 20),
                                    Card(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                        color: CustomColors.anxiousTeal_1,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 30.0, vertical: 20),
                                          child: Column(
                                            children: [
                                              StyledText(
                                                text: state.messages.last
                                                        .content ??
                                                    "no content",
                                                tags: addGlobalTags(
                                                    resultsTextStyle),
                                                style: resultsTextStyle,
                                              ),
                                            ],
                                          ),
                                        )),
                                    const SizedBox(height: 20),
                                    const Spacer(),
                                    _Actions(state.flowId!)
                                  ],
                                ),
                              ),
                            ActionStateFailure() => const _Retry(),
                            ActionStateIdle() ||
                            ActionStateInProgress() =>
                              const Padding(
                                  padding: EdgeInsets.all(20),
                                  child: WakefullyProgressIndicator(size: 30)),
                          };
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _Actions extends StatelessWidget {
  final int _flowId;

  const _Actions(this._flowId);

  @override
  Widget build(BuildContext context) {
    if (_flowId == 1 || _flowId == 2) {
      return const DreamDecoderResultsActions();
    } else if (_flowId == 3) {
      return const NightmareNavigatorResultsActions();
    } else if (_flowId == 4) {
      return const PersonalityQuizResultsActions();
    } else if (_flowId == 5) {
      return const DailyIntentionsResultsActions();
    }

    return Container();
  }
}

class _Retry extends StatelessWidget {
  const _Retry();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatBloc, ChatState>(
      builder: (context, state) {
        var isLoading = switch (state.chatStatus) {
          ActionStateSuccess() => false,
          ActionStateFailure() => false,
          ActionStateIdle() || ActionStateInProgress() => true,
        };
        return GestureDetector(
          onTap: () => isLoading
              ? null
              : context.read<ChatBloc>().add(const ChatEvent.retry()),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                const Logo(),
                const SizedBox(height: 20),
                isLoading
                    ? const WakefullyProgressIndicator(
                        size: 30,
                      )
                    : Column(
                        children: [
                          Text(
                            "There was an issue analyzing your dream",
                            style: GoogleFonts.openSans(
                                fontSize: 16,
                                color: CustomColors.anxiousTeal_0),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            "Tap to try again",
                            style: GoogleFonts.openSans(
                                fontSize: 12, color: CustomColors.white),
                          ),
                          const Icon(Icons.refresh_rounded,
                              color: CustomColors.white),
                        ],
                      ),
              ],
            ),
          ),
        );
      },
    );
  }
}
