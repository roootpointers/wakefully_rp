import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../legacy/custom_colors.dart';

class RetryButton extends StatelessWidget {
  const RetryButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Retry",
            style: GoogleFonts.openSans(
                fontSize: 14,
                color: CustomColors.white,
                fontWeight: FontWeight.bold)),
        const Icon(
          Icons.refresh_rounded,
          color: CustomColors.white,
        )
      ],
    );
  }
}
