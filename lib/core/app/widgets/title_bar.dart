import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:wakefully_analyzer/core/app/widgets/wakefully_back_button.dart';

import '../../../legacy/custom_colors.dart';

class TitleBar extends StatelessWidget {
  final Widget? child;
  final String? title;
  final bool showBackButton;
  const TitleBar(
      {super.key, this.showBackButton = true, this.title, this.child})
      : assert(title != null || child != null);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        showBackButton ? const WakefullyBackButton() : Container(),
        child == null ? _Title(title!) : Expanded(child: Center(child: child)),
        showBackButton ? const SizedBox(width: 48, height: 48) : Container(),
      ],
    );
  }
}

class _Title extends StatelessWidget {
  final String title;

  const _Title(this.title);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Center(
          child: Text(
            title,
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
