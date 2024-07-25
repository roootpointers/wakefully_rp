import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../../core/chat/bloc/chat_bloc.dart';
import '../../legacy/custom_colors.dart';

class NightmareNavigatorTitleBar extends StatelessWidget {
  const NightmareNavigatorTitleBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatBloc, ChatState>(
      builder: (context, state) {
        var generatedScriptFlip =
            state.flowBlockId == 35 || state.flowBlockId == 51;

        return Column(children: [
          _Title(state.resultsTitle!),
          generatedScriptFlip ? const _GeneratedScriptFlipTitle() : Container(),
        ]);
      },
    );
  }
}

class _GeneratedScriptFlipTitle extends StatelessWidget {
  const _GeneratedScriptFlipTitle();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Here is your flipped script. As you read, please IMAGINE every detail of this script, make sure you can really see or feel it.",
            style: GoogleFonts.lora(
              color: CustomColors.anxiousTeal_0,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
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
