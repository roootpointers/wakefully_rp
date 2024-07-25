import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wakefully_analyzer/app_router.gr.dart';
import 'package:wakefully_analyzer/core/app/bloc/app_bloc.dart';
import 'package:wakefully_analyzer/core/authentication/bloc/authentication_bloc.dart';
import 'package:wakefully_analyzer/features/purchases/bloc/purchases_bloc.dart';
import 'package:wakefully_analyzer/legacy/figma_sizer.dart';
import 'package:wakefully_analyzer/legacy/widgets/page_title.dart';

import '../../legacy/widgets/journey_card.dart';
import '../../resources.dart';
import 'bloc/journeys_bloc.dart';

@RoutePage(name: "JourneysRouter")
class JourneysPage extends StatelessWidget {
  const JourneysPage({super.key});

  @override
  Widget build(BuildContext context) {
    var firstName =
        context.read<AuthenticationBloc>().authenticatedUser!.firstName;

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BlocBuilder<PurchasesBloc, PurchasesState>(
          builder: (context, state) {
            var subscribed = switch (state) {
              InitializedPurchases() => state.subscribed,
              _ => false
            };

            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      SvgPicture.asset(Resources.images.goldenBlob),
                      SvgPicture.asset(Resources.images.dreamJourney,
                          height: 60.fw),
                    ],
                  ),
                ),
                Center(
                  child: PageTitle(
                      title: AppLocalizations.of(context)!.dreamJourneys),
                ),
                JourneyCard(
                  titleText: 'Dream Decoder',
                  superScript: true,
                  subtitleText:
                      "Your personal A.I. dream coach right at your bedside",
                  onStart: () {
                    subscribed
                        ? context.router.push(const PremiumDreamDecoderRouter())
                        : context.router.push(const BasicDreamDecoderRouter());
                  },
                  isSubscribed: true,
                ),
                JourneyCard(
                  superScript: true,
                  titleText: 'Nightmare Navigator',
                  subtitleText:
                      "Flip the script on your nightmare and see it fade away for good",
                  onStart: () {
                    context.router.push(const NightmareNavigatorRouter());
                  },
                  isSubscribed: subscribed,
                  addCommingSoonBadge: false,
                ),
                BlocBuilder<JourneysBloc, JourneysState>(
                  builder: (context, state) {
                    return JourneyCard(
                      titleText: 'Personality Quizzes',
                      subtitleText:
                          "Your dreams reveal your true personality each day",
                      subtitleTextColor: state.unreadMessagesCount > 0
                          ? Colors.red[300]
                          : null,
                      onStart: () => {
                        context.router
                            .push(const PersonalityQuizAddDreamRoute())
                      },
                      isSubscribed: subscribed,
                      addCommingSoonBadge: false,
                    );
                  },
                ),
                JourneyCard(
                  titleText: 'Daily Intentions',
                  subtitleText:
                      'Set your intention and see your day step up to reach your goals',
                  onStart: () {
                    var hasCompleted = context
                        .read<AppBloc>()
                        .state
                        .hasCompletedDailyIntentionJournal;
                    var initialFlowBlock = hasCompleted ? 59 : 52;

                    context.router.push(ChatRouter(
                        idOrSlug: "daily_intention_journal",
                        flowBlockId: initialFlowBlock,
                        parameters: {"first_name": firstName},
                        resultsTitle: "Daily Intention"));
                  },
                  isSubscribed: subscribed,
                  addCommingSoonBadge: false,
                ),
                JourneyCard(
                  titleText: 'Dream Incubator',
                  subtitleText:
                      "The secret superpower to controlling your dreams",
                  onStart: () {},
                  isSubscribed: subscribed,
                  addCommingSoonBadge: true,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
