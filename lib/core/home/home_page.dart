import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wakefully_analyzer/app_router.gr.dart';
import 'package:wakefully_analyzer/features/dreams/bloc/dreams_bloc.dart';
import 'package:wakefully_analyzer/features/journeys/bloc/journeys_bloc.dart';
import 'package:wakefully_analyzer/widgets/action_overlay.dart';

import '../../legacy/custom_colors.dart';
import '../../resources.dart';
import '../app/bloc/app_bloc.dart';

@RoutePage()
class HomePage extends StatelessWidget implements AutoRouteWrapper {
  const HomePage({super.key});

  final activeColorFilter =
      const ColorFilter.mode(CustomColors.goldish, BlendMode.srcIn);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ActionOverlay(
        child: Container(
          color: Theme.of(context).scaffoldBackgroundColor,
          child: SafeArea(
            child: AutoTabsScaffold(
              routes: const [
                DreamJournalRouter(),
                ProfileRouter(),
              ],
              bottomNavigationBuilder: (_, tabsRouter) {
                return BottomNavigationBar(
                  backgroundColor: CustomColors.darkBlue,
                  type: BottomNavigationBarType.fixed,
                  elevation: 0,
                  selectedItemColor: CustomColors.goldish,
                  unselectedItemColor: Colors.white,
                  selectedFontSize: 12,
                  unselectedFontSize: 12,
                  currentIndex: tabsRouter.activeIndex,
                  onTap: tabsRouter.setActiveIndex,
                  items: [
                    BottomNavigationBarItem(
                      icon: PaddedIcon(SvgPicture.asset(Resources.icons.home)),
                      activeIcon: PaddedIcon(
                        SvgPicture.asset(Resources.icons.homeSelected,
                            colorFilter: activeColorFilter),
                      ),
                      label: AppLocalizations.of(context)!.home,
                    ),
                    BottomNavigationBarItem(
                      icon: PaddedIcon(SvgPicture.asset(Resources.icons.cog)),
                      activeIcon: PaddedIcon(
                        SvgPicture.asset(
                          Resources.icons.cog,
                          colorFilter: activeColorFilter,
                        ),
                      ),
                      label: AppLocalizations.of(context)!.settings,
                    ),
                  ],
                );
              },
              floatingActionButtonBuilder: (context, tabsRouter) =>
                  tabsRouter.activeIndex == 0
                      ? FloatingActionButton(
                          shape: const CircleBorder(),
                          backgroundColor: CustomColors.lightBlue,
                          onPressed: () =>
                              context.router.push(const AddDreamRoute()),
                          child: SizedBox(
                              width: 32,
                              child:
                                  SvgPicture.asset(Resources.icons.addCloud)),
                        )
                      : null,
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerDocked,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<DreamsBloc, DreamsState>(
          listener: (context, state) {
            context.read<JourneysBloc>().add(const JourneysEvent.started());
          },
        ),
        BlocListener<AppBloc, AppState>(
          listener: (context, state) {
            _showUpgradeDialog(context, state);
          },
        ),
      ],
      child: this,
    );
  }

  _showUpgradeDialog(BuildContext context, AppState state) {
    if (state.upgradeAvailable && state.upgradeMessage != null) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                title: Text(
                  "Upgrade Available",
                  style: GoogleFonts.lora(
                      color: CustomColors.anxiousTeal_0,
                      fontWeight: FontWeight.w600),
                ),
                content: Text(state.upgradeMessage!,
                    style: GoogleFonts.openSans(color: CustomColors.white)),
                actions: [
                  TextButton(
                      onPressed: () => context.router.popForced(),
                      child: const Text("Ok"))
                ],
              ));
    }
  }
}

class PaddedIcon extends StatelessWidget {
  final Widget child;
  const PaddedIcon(this.child, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4.0),
      child: child,
    );
  }
}
