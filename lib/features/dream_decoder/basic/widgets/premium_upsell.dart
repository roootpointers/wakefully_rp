import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wakefully_analyzer/app_router.gr.dart';

import '../../../../legacy/custom_colors.dart';
import '../../../../resources.dart';
import '../../../purchases/bloc/purchases_bloc.dart';

class PremiumUpsell extends StatelessWidget {
  const PremiumUpsell({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PurchasesBloc, PurchasesState>(
      builder: (context, state) {
        final upsellCallToActionTextStyle = GoogleFonts.lora(
          color: CustomColors.goldish,
          fontSize: 22,
          fontWeight: FontWeight.w500,
        );
        return switch (state) {
          InitializedPurchases() => state.subscribed
              ? Container()
              : InkWell(
                  onTap: () async {
                    var result =
                        await context.router.push<bool>(const PaywallRoute());
                    if (result!) {
                      // ignore: use_build_context_synchronously
                      if (!context.mounted) return;
                      context.router
                          .popAndPush(const PremiumDreamDecoderRouter());
                    }
                  },
                  child: Column(
                    children: [
                      Text(
                          "Unlock Fully Personalized Analysis: Describe your own dreams in your own words.",
                          textAlign: TextAlign.center,
                          style: upsellCallToActionTextStyle),
                      const SizedBox(height: 12),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          "Upgrade to\r\nDream Decoder Premium\u2122",
                          textAlign: TextAlign.center,
                          style: upsellCallToActionTextStyle,
                        ),
                      ),
                      const SizedBox(height: 12),
                      SizedBox(
                        width: double.infinity,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          color: CustomColors.goldish,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                                text: "Get Your 7 Day\r\n",
                                                style: GoogleFonts.lora(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.black)),
                                            TextSpan(
                                                text: "FREE Trial",
                                                style: GoogleFonts.lora(
                                                    fontSize: 22,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black)),
                                          ],
                                        ),
                                      ),
                                      const Spacer(),
                                      CircleAvatar(
                                        backgroundColor: CustomColors.black,
                                        child: SvgPicture.asset(
                                            Resources.icons.lock),
                                      ),
                                    ],
                                  )
                                ]),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
          UninitializedPurchases() => Container(),
        };
      },
    );
  }
}
