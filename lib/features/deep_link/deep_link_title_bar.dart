import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../../../legacy/custom_colors.dart';

class DeepLinkTitleBar extends StatelessWidget {
  final Map<String, String> _parameters;
  final int _flowId;

  const DeepLinkTitleBar(this._flowId, this._parameters, {super.key});

  @override
  Widget build(BuildContext context) {
    String? title = "Wakefully";

    if (_flowId == 1) {
      title = _parameters["dream_type"];
    }

    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Center(
          child: Text(
            title ?? "Wakefully",
            textAlign: TextAlign.center,
            style: GoogleFonts.lora(
              color: CustomColors.anxiousTeal_0,
              fontSize: 32,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Text(
          DateFormat.yMMMMd().format(DateTime.now()),
          textAlign: TextAlign.center,
          style: GoogleFonts.openSans(
            fontSize: 12,
            color: CustomColors.gray4,
          ),
        ),
      ],
    );
  }
}
