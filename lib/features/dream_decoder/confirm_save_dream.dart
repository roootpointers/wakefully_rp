import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wakefully_analyzer/app_router.gr.dart';
import 'package:wakefully_analyzer/features/dreams/bloc/dreams_bloc.dart';

import '../../legacy/custom_colors.dart';
import '../../resources.dart';

class ConfirmSaveDream extends StatelessWidget {
  final String journeyId;
  const ConfirmSaveDream(this.journeyId, {super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: constraints.maxHeight,
            maxHeight: constraints.maxHeight,
          ),
          child: IntrinsicHeight(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 8),
                  Text("Save Dream",
                      style: GoogleFonts.lora(
                        fontSize: 32,
                        color: CustomColors.anxiousTeal_0,
                        fontWeight: FontWeight.w500,
                      )),
                  const SizedBox(
                    height: 40,
                  ),
                  SvgPicture.asset(Resources.images.warningBlobYellow),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Upgrade to Save\r\nUnlimited Dreams",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lora(
                      color: CustomColors.anxiousTeal_0,
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Saving this dream will replace\r\nyour last one",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.openSans(
                      color: CustomColors.calmGrey_0,
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    height: 56,
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () async {
                        var result = await context.router
                            .push<bool>(const PaywallRoute());
                        if (result!) {
                          // ignore: use_build_context_synchronously
                          if (!context.mounted) return;
                          context
                              .read<DreamsBloc>()
                              .add(DreamsEvent.dreamSaved(journeyId));
                          context.router.replaceAll([const HomeRoute()]);
                        }
                      },
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(8.0))),
                          backgroundColor: MaterialStateProperty.all(
                            CustomColors.goldish,
                          )),
                      child: const Text(
                        "UPGRADE & Save Dream",
                        style: TextStyle(color: CustomColors.darkBlue_0),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  SizedBox(
                    height: 56,
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () {
                        context
                            .read<DreamsBloc>()
                            .add(DreamsEvent.dreamSaved(journeyId));
                        context.router.replaceAll([const HomeRoute()]);
                      },
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(8.0))),
                          backgroundColor: MaterialStateProperty.all(
                            CustomColors.anxiousTeal_0,
                          )),
                      child: const Text(
                        "Replace Last Dream",
                        style: TextStyle(color: CustomColors.darkBlue_0),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
