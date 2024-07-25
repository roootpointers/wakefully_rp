import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wakefully_analyzer/legacy/figma_sizer.dart';

import '../custom_colors.dart';

class ComingSoonBadge extends StatelessWidget {
  const ComingSoonBadge({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      width: 150,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(5),
        color: CustomColors.goldish,
      ),
      child: Center(
        child: Text("Coming Soon!",
            textAlign: TextAlign.center,
            style: GoogleFonts.openSans(
              fontSize: 12.fsp,
              fontWeight: FontWeight.w600,
            )),
      ),
    );
  }
}
