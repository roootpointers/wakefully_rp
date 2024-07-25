import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
// ignore: implementation_imports
import 'package:flutter/src/material/icons.dart' as material_icons;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wakefully_analyzer/app_router.gr.dart';
import 'package:wakefully_analyzer/core/app/widgets/retry_button.dart';
import 'package:wakefully_analyzer/core/page_state.dart';
import 'package:wakefully_analyzer/features/journeys/bloc/journeys_bloc.dart';
import 'package:wakefully_analyzer/legacy/figma_sizer.dart';
import 'package:wakefully_analyzer/legacy/widgets/dream_canvas.dart';
import 'package:wakefully_analyzer/legacy/widgets/page_title.dart';
import 'package:wakefully_analyzer/legacy/widgets/wakefully_progress_indicator.dart';

import '../../legacy/custom_colors.dart';
import '../../resources.dart';
import '../purchases/bloc/purchases_bloc.dart';

@RoutePage()
class DreamsPage extends StatelessWidget {
  const DreamsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<JourneysBloc, JourneysState>(
      buildWhen: (previous, current) =>
          previous.blobsStatus != current.blobsStatus,
      builder: (context, state) {
        return switch (state.blobsStatus) {
          PageStateInitial() ||
          PageStateFailure() =>
            const ErrorLoadingDreams(),
          PageStateLoading() => const WakefullyProgressIndicator(),
          PageStateSuccess() => const DreamDecoderView(),
        };
      },
    );
  }
}

class DreamDecoderView extends StatelessWidget {
  const DreamDecoderView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BlocBuilder<JourneysBloc, JourneysState>(
          buildWhen: (previous, current) => previous.blobs != current.blobs,
          builder: (context, state) {
            if (state.blobs.isNotEmpty) {
              return DreamCanvas(state.blobs);
            }
            return const EmptyDreams();
          },
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: EdgeInsets.symmetric(
              vertical: 24.fh,
              horizontal: 20.5.fw,
            ),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  CustomColors.darkBlue,
                  Colors.transparent,
                ],
              ),
            ),
            child: BlocBuilder<PurchasesBloc, PurchasesState>(
              builder: (context, state) {
                return switch (state) {
                  InitializedPurchases() => Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height: 56,
                          width: double.infinity,
                          child: TextButton(
                            style: const ButtonStyle(
                                elevation: MaterialStatePropertyAll(0)),
                            onPressed: () => context.router.push(
                                state.subscribed
                                    ? const PremiumDreamDecoderRouter()
                                    : const BasicDreamDecoderRouter()),
                            child: const Text("Add a Dream"),
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        state.subscribed
                            ? Container()
                            : SizedBox(
                                height: 56,
                                width: double.infinity,
                                child: TextButton(
                                  onPressed: () =>
                                      context.router.push(const PaywallRoute()),
                                  style: ButtonStyle(
                                      elevation:
                                          const MaterialStatePropertyAll(0),
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              CustomColors.goldish)),
                                  child: Text(
                                    state.isEligibileForTrial
                                        ? "Premium - 7 Day FREE Trial"
                                        : "Upgrade to Premium",
                                  ),
                                ),
                              ),
                      ],
                    ),
                  UninitializedPurchases() =>
                    Column(mainAxisSize: MainAxisSize.min, children: [
                      SizedBox(
                        height: 56,
                        width: double.infinity,
                        child: TextButton(
                          onPressed: () => context.router
                              .push(const BasicDreamDecoderRouter()),
                          child: const Text("Add a Dream"),
                        ),
                      ),
                    ])
                };
              },
            ),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.only(
              top: 52.fh,
              bottom: 26.fh,
              left: 16.fw,
              right: 16.fw,
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  CustomColors.darkBlue,
                  CustomColors.darkBlue.withAlpha(0),
                ],
              ),
            ),
            child: PageTitle(
              title: AppLocalizations.of(context)!.dreamDecoder,
              superscript: "\u2122",
            ),
          ),
        ),
      ],
    );
  }
}

class EmptyDreams extends StatelessWidget {
  const EmptyDreams({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        SvgPicture.asset(
          Resources.images.emptyDreams,
        ),
        const Spacer(),
      ],
    );
  }
}

class ErrorLoadingDreams extends StatelessWidget {
  const ErrorLoadingDreams({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Icon(material_icons.Icons.error_outline,
            size: 48, color: Colors.red),
        Text("There was an issue loading your dreams",
            style: GoogleFonts.openSans(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w600)),
        const SizedBox(
          height: 20,
        ),
        GestureDetector(
            onTap: () {
              context.read<JourneysBloc>().add(const JourneysEvent.started());
            },
            child: const RetryButton())
      ],
    );
  }
}
