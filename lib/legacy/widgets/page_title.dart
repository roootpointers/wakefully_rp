import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wakefully_analyzer/legacy/figma_sizer.dart';

import '../custom_colors.dart';

class PageTitle extends StatelessWidget {
  final String title;
  final String superscript;

  const PageTitle({super.key, required this.title, this.superscript = ""});

  @override
  Widget build(BuildContext context) => RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text: title,
          style: GoogleFonts.lora(
            fontSize: 32.fsp,
            fontWeight: FontWeight.w500,
            color: CustomColors.anxiousTeal_0,
          ),
          children: [
            WidgetSpan(
              child: Baseline(
                baselineType: TextBaseline.alphabetic,
                baseline: 8,
                child: FractionalTranslation(
                  translation: const Offset(0, -1.2),
                  child: Text(
                    superscript,
                    style: GoogleFonts.lora(
                      fontSize: 16,
                      color: CustomColors.anxiousTeal_0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
}
