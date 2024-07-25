import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:styled_text/styled_text.dart';
import 'package:wakefully_analyzer/core/page_state.dart';
import 'package:wakefully_analyzer/features/dream_decoder/analyzing_view.dart';
import 'package:wakefully_analyzer/features/dream_decoder/basic/dream_decoder_basic_results_actions.dart';
import 'package:wakefully_analyzer/features/personality_quiz/personality_quiz_results_actions.dart';
import 'package:wakefully_analyzer/utils/style_text_tags.dart';

import '../../core/app/widgets/title_bar.dart';
import '../../data/flows/flows.dart';
import '../../dependency_container.dart';
import '../../legacy/custom_colors.dart';
import 'cubit/deep_link_cubit.dart';
import 'deep_link_params.dart';

@RoutePage()
class DeepLinkPage extends StatelessWidget implements AutoRouteWrapper {
  final DeepLinkParams params;

  const DeepLinkPage({
    super.key,
    required this.params,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DeepLinkCubit, DeepLinkState>(
      builder: (context, state) {
        return switch (state.pageStatus) {
          PageStateInitial() => Container(),
          PageStateLoading() => const AnalyzingView("Getting your results..."),
          PageStateSuccess() => DeepLinkResults(
              result: state.result,
              title: state.title,
              flowId: state.flowId!,
              journeyId: state.journeyId!,
            ),
          PageStateFailure() => const Text("Something went wrong"),
        };
      },
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
        create: (_) => sl<DeepLinkCubit>()..load(params),
        child: Container(
            color: Theme.of(context).scaffoldBackgroundColor,
            child: SafeArea(child: Scaffold(body: this))));
  }
}

class DeepLinkResults extends StatelessWidget {
  final int flowId;
  final String result;
  final String title;

  final String journeyId;

  const DeepLinkResults({
    super.key,
    required this.result,
    required this.title,
    required this.flowId,
    required this.journeyId,
  });

  @override
  Widget build(BuildContext context) {
    final resultsTextStyle = GoogleFonts.openSans(
        fontSize: 16, fontWeight: FontWeight.w600, color: CustomColors.black);

    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TitleBar(
                  title: title,
                  showBackButton: false,
                ),
                const SizedBox(height: 20),
                Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    color: CustomColors.anxiousTeal_1,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30.0, vertical: 20),
                      child: Column(
                        children: [
                          StyledText(
                            text: result,
                            tags: addGlobalTags(resultsTextStyle),
                            style: resultsTextStyle,
                          ),
                        ],
                      ),
                    )),
                const SizedBox(height: 20),
                const Spacer(),
                _Actions(flowId, journeyId)
              ],
            ),
          ),
        )
      ],
    );
  }
}

class _Actions extends StatelessWidget {
  final int flowId;
  final String journeyId;

  const _Actions(this.flowId, this.journeyId);

  @override
  Widget build(BuildContext context) {
    if (flowId == Flows.dreamDecoderBasic.index) {
      return DreamDecoderBasicResultsActions(journeyId: journeyId);
    } else if (flowId == Flows.personalityQuiz.index) {
      return const PersonalityQuizResultsActions();
    }

    return Container();
  }
}
