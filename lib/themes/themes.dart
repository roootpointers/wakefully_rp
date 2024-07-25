import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wakefully_analyzer/legacy/figma_sizer.dart';

import '../legacy/custom_colors.dart';

ThemeData lightTheme = ThemeData(
    appBarTheme: const AppBarTheme(
        backgroundColor: CustomColors.darkBlue,
        elevation: 0,
        centerTitle: true),
    scaffoldBackgroundColor: CustomColors.darkBlue,
    textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
      backgroundColor: CustomColors.anxiousTeal_0,
      foregroundColor: CustomColors.darkBlue,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
        side: BorderSide.none,
      ),
      textStyle: GoogleFonts.openSans(
          fontSize: 16.fsp,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.35.fsp),
    )));
