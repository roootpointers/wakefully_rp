import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:wakefully_analyzer/core/action_state.dart';
import 'package:wakefully_analyzer/core/error_view.dart';
import 'package:wakefully_analyzer/features/purchases/bloc/paywall_bloc.dart';
import 'package:wakefully_analyzer/legacy/widgets/wakefully_snackbar.dart';
import 'package:wakefully_analyzer/widgets/action_overlay.dart';

import '../../core/page_state.dart';
import '../../dependency_container.dart';
import '../../legacy/custom_colors.dart';
import '../../legacy/widgets/underlined_clickable_text.dart';
import '../../legacy/widgets/wakefully_progress_indicator.dart';
import '../../resources.dart';
import 'bloc/purchases_bloc.dart';
import 'subscriptions.dart';

@RoutePage<bool>()
class PaywallPage extends StatelessWidget implements AutoRouteWrapper {
  const PaywallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ActionOverlay(
      child: Container(
        color: Theme.of(context).scaffoldBackgroundColor,
        child: SafeArea(
          child: Scaffold(
            body: BlocListener<PurchasesBloc, PurchasesState>(
              listener: (context, state) {
                ActionOverlay.of(context).hide();
                switch (state) {
                  case InitializedPurchases initialized:
                    return switch (initialized.purchaseState) {
                      ActionStateSuccess() => {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text("Purchase successful"))),
                          context.router.maybePop(true),
                        },
                      ActionStateFailure failure =>
                        ScaffoldMessenger.of(context)
                            .showSnackBar(buildSnackbar(failure.message)),
                      ActionStateInProgress() =>
                        ActionOverlay.of(context).show(),
                      ActionStateIdle() => ActionOverlay.of(context).hide(),
                    };
                  case UninitializedPurchases():
                }
              },
              child: Scaffold(
                body: LayoutBuilder(builder: (context, constraints) {
                  return BlocBuilder<PaywallBloc, PaywallState>(
                    builder: (context, state) {
                      return switch (state.pageStatus) {
                        PageStateInitial() => Container(),
                        PageStateLoading() =>
                          const WakefullyProgressIndicator(),
                        PageStateFailure() => _PaywallView(constraints),
                        PageStateSuccess() => _PaywallView(constraints)
                      };
                    },
                  );
                }),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
        create: (_) => sl<PaywallBloc>()..add(const PaywallEvent.started()),
        child: this);
  }
}

class _PaywallView extends StatelessWidget {
  final BoxConstraints constraints;

  const _PaywallView(this.constraints);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints: BoxConstraints(
            minHeight: constraints.maxHeight, minWidth: constraints.maxWidth),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
          child: IntrinsicHeight(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 16),
                Stack(
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: IconButton(
                        icon: SvgPicture.asset(
                          Resources.icons.close,
                          colorFilter: const ColorFilter.mode(
                            CustomColors.anxiousTeal_0,
                            BlendMode.srcIn,
                          ),
                        ),
                        onPressed: () => context.router.popForced(false),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 16),
                BlocBuilder<PurchasesBloc, PurchasesState>(
                  builder: (context, state) {
                    return IntrinsicHeight(
                      child: switch (state) {
                        InitializedPurchases() => Column(
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    SvgPicture.asset(
                                        Resources.images.goldenBlob),
                                    SvgPicture.asset(Resources.images.crown),
                                  ],
                                ),
                              ),
                              !state.offeringsInfo.isEligibleForTrial
                                  ? Container()
                                  : Text(
                                      "7 Day Free Trial",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.lora(
                                        color: CustomColors.goldish,
                                        fontSize: 30,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                              Text(
                                'Subscribe TODAY for the\nfull dream experience\nTONIGHT!',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.openSans(
                                  color: CustomColors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(height: 64),
                              const _PremiumFeatures(),
                              const SizedBox(height: 64),
                              const _AnnualSubscriptionButton(),
                              const SizedBox(height: 10),
                              const _MonthlySubscriptionButton(),
                              const SizedBox(height: 32),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20.0),
                                  child: Column(
                                    children: [
                                      Text(
                                          "This subscription automatically renews for ${state.offeringsInfo.annualPrice} per year or ${state.offeringsInfo.monthlyPrice} per month. Your payment will be charged to your account.",
                                          style: GoogleFonts.openSans(
                                            color: CustomColors.calmGrey_0,
                                            fontSize: 12,
                                          )),
                                      const Spacer(),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          UnderlinedClickableText(
                                            underlinedText: "Terms of Use",
                                            fontSize: 12,
                                            textColor: CustomColors.gray4,
                                            onUnderlinedTap: () =>
                                                launchUrlString(Resources
                                                    .urls.termsAndConditions),
                                          ),
                                          UnderlinedClickableText(
                                            underlinedText: "Privacy Policy",
                                            fontSize: 12,
                                            textColor: CustomColors.gray4,
                                            onUnderlinedTap: () =>
                                                launchUrlString(Resources
                                                    .urls.privacyPolicy),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 32,
                              ),
                            ],
                          ),
                        UninitializedPurchases() => const ErrorView(),
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _MonthlySubscriptionButton extends StatelessWidget {
  const _MonthlySubscriptionButton();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        onPressed: () => context.read<PurchasesBloc>().add(
            const PurchasesEvent.subscriptionPurchased(Subscriptions.monthly)),
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all(CustomColors.anxiousTeal_0)),
        child: Padding(
          padding:
              const EdgeInsets.only(left: 8.0, top: 4, bottom: 4, right: 8),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "PREMIUM MONTHLY",
                  style: GoogleFonts.openSans(
                    color: CustomColors.darkerBlue,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                BlocBuilder<PurchasesBloc, PurchasesState>(
                  builder: (context, state) {
                    return switch (state) {
                      InitializedPurchases() => Text(
                          "${state.offeringsInfo.monthlyPrice}/month",
                          style: GoogleFonts.openSans(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: CustomColors.darkerBlue,
                          ),
                        ),
                      UninitializedPurchases() => Container(),
                    };
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _AnnualSubscriptionButton extends StatelessWidget {
  const _AnnualSubscriptionButton();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        onPressed: () => context.read<PurchasesBloc>().add(
            const PurchasesEvent.subscriptionPurchased(Subscriptions.annual)),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(CustomColors.goldish)),
        child: Padding(
          padding:
              const EdgeInsets.only(left: 8.0, top: 4, bottom: 4, right: 8),
          child: BlocBuilder<PurchasesBloc, PurchasesState>(
            builder: (context, state) {
              return switch (state) {
                InitializedPurchases() => Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "PREMIUM ANNUAL",
                            style: GoogleFonts.openSans(
                              color: CustomColors.darkerBlue,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            "${state.offeringsInfo.annualPrice}/year",
                            style: GoogleFonts.openSans(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: CustomColors.darkerBlue,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 4, horizontal: 24),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)),
                        child: Text(
                          "${state.offeringsInfo.savings}% OFF",
                          style: GoogleFonts.openSans(
                              fontSize: 12, fontWeight: FontWeight.w700),
                        ),
                      )
                    ],
                  ),
                UninitializedPurchases() => Container(),
              };
            },
          ),
        ),
      ),
    );
  }
}

class _PremiumFeatures extends StatelessWidget {
  const _PremiumFeatures();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "√ Unlimited dream analysis",
          style: GoogleFonts.openSans(
            color: CustomColors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          "√ Audio-guided tracks",
          style: GoogleFonts.openSans(
            color: CustomColors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          "√ Mindful reminders",
          style: GoogleFonts.openSans(
            color: CustomColors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          "√ Personal analytics",
          style: GoogleFonts.openSans(
            color: CustomColors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
