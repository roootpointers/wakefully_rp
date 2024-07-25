import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wakefully_analyzer/app_router.gr.dart';

import '../../legacy/custom_colors.dart';
import '../../resources.dart';

class ConfirmDeletePage extends StatelessWidget {
  const ConfirmDeletePage({super.key});

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
                children: [
                  const SizedBox(height: 8),
                  Text("Delete Dream",
                      style: GoogleFonts.lora(
                        fontSize: 32,
                        color: CustomColors.anxiousTeal_0,
                        fontWeight: FontWeight.w500,
                      )),
                  const SizedBox(
                    height: 40,
                  ),
                  Image.asset(Resources.images.warningBlob),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Are you sure?",
                    style: GoogleFonts.lora(
                      color: CustomColors.anxiousTeal_0,
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    "This action cannot be undone.",
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
                      onPressed: () => context.router.popForced(),
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  side: const BorderSide(
                                      color: CustomColors.anxiousTeal_0),
                                  borderRadius: BorderRadius.circular(8.0))),
                          backgroundColor: MaterialStateProperty.all(
                            CustomColors.darkBlue,
                          )),
                      child: const Text(
                        "Cancel",
                        style: TextStyle(color: CustomColors.anxiousTeal_0),
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
                      onPressed: () =>
                          context.router.replaceAll([const HomeRoute()]),
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  side: const BorderSide(
                                      color: CustomColors.anxiousTeal_0),
                                  borderRadius: BorderRadius.circular(8.0))),
                          backgroundColor: MaterialStateProperty.all(
                            CustomColors.darkBlue,
                          )),
                      child: const Text(
                        "Yes, delete dream",
                        style: TextStyle(color: CustomColors.anxiousTeal_0),
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
