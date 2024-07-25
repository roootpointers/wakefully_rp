import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../../../core/chat/bloc/chat_bloc.dart';
import '../../../legacy/custom_colors.dart';

class DreamDecoderTitleBar extends StatelessWidget {
  const DreamDecoderTitleBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatBloc, ChatState>(
      builder: (context, state) {
        var dreamType = state.parameters["dream_type"];

        return Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                dreamType ?? "Dream Decoder",
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
      },
    );
  }
}
