import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:wakefully_analyzer/core/app/widgets/title_bar.dart';
import 'package:wakefully_analyzer/legacy/widgets/wakefully_progress_indicator.dart';
import 'package:wakefully_analyzer/widgets/constrained_scroll_view.dart';

import '../../app_router.gr.dart';
import '../../core/authentication/bloc/authentication_bloc.dart';
import '../../core/page_state.dart';
import '../../legacy/custom_colors.dart';
import '../journeys/bloc/journeys_bloc.dart';

@RoutePage(name: "NightmareNavigatorRouter")
class NightmareNavigatorPage extends StatelessWidget {
  const NightmareNavigatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: SafeArea(
        child: Scaffold(
          body: ConstrainedScrollView(
            child: BlocBuilder<JourneysBloc, JourneysState>(
              buildWhen: (previous, current) =>
                  previous.scriptFlipsStatus != current.scriptFlipsStatus,
              builder: (context, state) {
                var returningUser = state.scriptFlips.isNotEmpty;

                return switch (state.scriptFlipsStatus) {
                  PageStateInitial() ||
                  PageStateLoading() =>
                    const Center(child: WakefullyProgressIndicator()),
                  PageStateSuccess() => _Page(returningUser: returningUser),
                  PageStateFailure() => const Center(
                      child: Text(
                          "Error loading Nightmare Navigator. Please try again.")),
                };
              },
            ),
          ),
        ),
      ),
    );
  }
}

class _Page extends StatelessWidget {
  const _Page({
    required this.returningUser,
  });

  final bool returningUser;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleBar(child: Container()),
        const SizedBox(
          height: 20,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20, bottom: 20),
            child: returningUser
                ? const _NightmareNavigatorReturningUserView()
                : const _NightmareNavigatorFirstTimeUserView(),
          ),
        ),
      ],
    );
  }
}

class _NightmareNavigatorReturningUserView extends StatelessWidget {
  const _NightmareNavigatorReturningUserView();

  _showScripts(BuildContext context) {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        builder: (context) => Wrap(children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * 0.8,
                width: double.infinity,
                color: Colors.transparent,
                child: Container(
                  decoration: const BoxDecoration(
                      color: CustomColors.darkBlue,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25.0),
                          topRight: Radius.circular(25.0))),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Text("Choose a script from below:",
                          style: GoogleFonts.lora(
                              fontSize: 22, color: CustomColors.anxiousTeal_0)),
                      const SizedBox(
                        height: 20,
                      ),
                      BlocBuilder<JourneysBloc, JourneysState>(
                        builder: (context, state) {
                          var scriptFlips =
                              context.read<JourneysBloc>().state.scriptFlips;

                          return Expanded(
                            child: ListView.separated(
                              itemCount: scriptFlips.length,
                              itemBuilder: (context, index) {
                                var scriptFlip = scriptFlips[index];

                                var words = scriptFlip.content.split(' ');
                                var preview = words.take(20).join(' ');

                                return ListTile(
                                  title: Text(
                                    "$preview...",
                                    style: GoogleFonts.openSans(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: CustomColors.white),
                                  ),
                                  subtitle: Text(
                                    DateFormat.yMMMMd()
                                        .format(scriptFlip.created),
                                    style: GoogleFonts.openSans(
                                        color: CustomColors.gray4),
                                  ),
                                  onTap: () {
                                    context.router.popForced();
                                    context.router.push(FlippedScriptRoute(
                                        scriptFlip: scriptFlip));
                                  },
                                );
                              },
                              separatorBuilder:
                                  (BuildContext context, int index) =>
                                      const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20.0),
                                child: Divider(
                                  color: CustomColors.gray4,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              )
            ]));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Welcome back to your Nightmare Navigator\u2122 practice.",
          style: GoogleFonts.openSans(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: CustomColors.anxiousTeal_0),
        ),
        const SizedBox(height: 8),
        Text(
          "You may rehearse your previous flipped-script, or create a new one.",
          style: GoogleFonts.openSans(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: CustomColors.anxiousTeal_0),
        ),
        const Spacer(),
        SizedBox(
          height: 56,
          width: double.infinity,
          child: TextButton(
            onPressed: () {
              _showScripts(context);
              //AutoRouter.of(context).push(const FlippedScriptRoute());
            },
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0))),
                backgroundColor: MaterialStateProperty.all(
                  CustomColors.goldish,
                )),
            child: const Text(
              "Rehearse Old Script",
              style: TextStyle(color: CustomColors.darkBlue_0),
            ),
          ),
        ),
        const SizedBox(height: 8),
        SizedBox(
          height: 56,
          width: double.infinity,
          child: TextButton(
            onPressed: () {
              context.router.push(const NightmareAddDreamRoute());
            },
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0))),
                backgroundColor: MaterialStateProperty.all(
                  CustomColors.anxiousTeal_0,
                )),
            child: const Text(
              "Create New Script",
              style: TextStyle(color: CustomColors.darkBlue_0),
            ),
          ),
        ),
      ],
    );
  }
}

class _NightmareNavigatorFirstTimeUserView extends StatelessWidget {
  const _NightmareNavigatorFirstTimeUserView();

  _showDisclaimer(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            content: Text(
                "If you suffer from extreme fear or PTSD, make sure you have professional support before attempting this alone!",
                textAlign: TextAlign.center,
                style: GoogleFonts.openSans(color: CustomColors.white)),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: TextButton(
                          onPressed: () {
                            context.router.popForced();
                            context.router.push(const NightmareAddDreamRoute());
                          },
                          child: const Text("I'm good to continue")),
                    ),
                    const SizedBox(height: 4),
                    SizedBox(
                      width: double.infinity,
                      child: TextButton(
                          onPressed: () {
                            context.router.replaceAll([const HomeRoute()]);
                          },
                          child: const Text("Exit practice")),
                    ),
                    const SizedBox(height: 4),
                  ],
                ),
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    var firstName =
        context.read<AuthenticationBloc>().authenticatedUser!.firstName;

    return Column(
      children: [
        Text(
          "Hey there, $firstName! Get ready for an empowering journey with the Nightmare Navigator™.\r\n\r\n"
          "\"Nightmare Rehearsal Therapy\" is like editing your dream. You flip the script on your nightmare by envisioning a positive ending.\r\n\r\n"
          "The secret sauce? Rehearse it till it sticks, creating a joy-filled shortcut in your brain - the more you rehearse  it, the better it sticks!",
          style: GoogleFonts.openSans(
              fontSize: 18, color: CustomColors.anxiousTeal_0),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
            "Prepare to say goodbye to nightmares and give your brain a high-five!",
            style: GoogleFonts.lora(
              fontSize: 15,
              fontStyle: FontStyle.italic,
              color: CustomColors.calmGrey_0,
            )),
        const Spacer(),
        SizedBox(
          height: 56,
          width: double.infinity,
          child: TextButton(
            onPressed: () {
              _showDisclaimer(context);
            },
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0))),
                backgroundColor: MaterialStateProperty.all(
                  CustomColors.anxiousTeal_0,
                )),
            child: const Text(
              "Let's Start!",
              style: TextStyle(color: CustomColors.darkBlue_0),
            ),
          ),
        ),
      ],
    );
  }
}
