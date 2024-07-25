import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wakefully_analyzer/legacy/figma_sizer.dart';

SnackBar buildSnackbar(String message) {
  return SnackBar(
    duration: const Duration(seconds: 2),
    content: Text(
      message,
      style: GoogleFonts.openSans(
        fontSize: 16.fsp,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.35.fsp,
      ),
    ),
  );
}
