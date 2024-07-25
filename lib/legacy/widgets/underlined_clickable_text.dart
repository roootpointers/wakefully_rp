import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wakefully_analyzer/legacy/figma_sizer.dart';

import '../custom_colors.dart';

class UnderlinedClickableText extends StatelessWidget {
  final String startText;
  final String underlinedText;
  final Color textColor;
  final double fontSize;
  final double letterSpacing;
  final void Function()? onUnderlinedTap;

  const UnderlinedClickableText({
    super.key,
    this.startText = '',
    required this.underlinedText,
    this.textColor = CustomColors.calmGrey_0,
    this.fontSize = 14,
    this.letterSpacing = 0.4,
    this.onUnderlinedTap,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: startText,
        style: GoogleFonts.openSans(
          fontSize: fontSize.fsp,
          color: textColor,
          letterSpacing: letterSpacing.fsp,
        ),
        children: [
          TextSpan(
            text: underlinedText,
            recognizer: TapGestureRecognizer()..onTap = onUnderlinedTap,
            style: GoogleFonts.openSans(
              fontSize: fontSize.fsp,
              decoration: TextDecoration.underline,
              color: textColor,
              letterSpacing: letterSpacing.fsp,
            ),
          )
        ],
      ),
      textAlign: TextAlign.left,
    );
  }
}
