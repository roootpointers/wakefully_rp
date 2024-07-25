import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ErrorView extends StatelessWidget {
  const ErrorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Icon(Icons.error_outline, size: 48, color: Colors.red),
        Text(
          "Something went wrong",
          style: GoogleFonts.openSans(color: Colors.white),
        ),
      ],
    );
  }
}
