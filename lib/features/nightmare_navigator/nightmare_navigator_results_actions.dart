import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wakefully_analyzer/core/chat/bloc/chat_bloc.dart';
import 'package:wakefully_analyzer/features/journeys/bloc/journeys_bloc.dart';

import '../../app_router.gr.dart';
import '../../legacy/custom_colors.dart';

class NightmareNavigatorResultsActions extends StatelessWidget {
  const NightmareNavigatorResultsActions({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatBloc, ChatState>(
      builder: (context, state) {
        var flowBlockId = state.flowBlockId;
        var generatedScriptFlip = flowBlockId == 35 || flowBlockId == 51;

        return generatedScriptFlip
            ? Column(
                children: [
                  SizedBox(
                    height: 56,
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () async {
                        _refresh(context);
                        await _showModalMessage(context);
                        if (context.mounted) {
                          context.router.replaceAll([const HomeRoute()]);
                        }
                      },
                      child: Text("I like it - Save",
                          style: GoogleFonts.openSans(
                              fontSize: 17, fontWeight: FontWeight.bold)),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 56,
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () {
                        context.read<ChatBloc>().add(ChatEvent.choiceMade(
                            "script_flip", "$flowBlockId", false, false));
                      },
                      child: Text("Try another one",
                          style: GoogleFonts.openSans(
                              fontSize: 17, fontWeight: FontWeight.bold)),
                    ),
                  ),
                ],
              )
            : SizedBox(
                height: 56,
                width: double.infinity,
                child: TextButton(
                  onPressed: () {
                    _refresh(context);
                    context.router.replaceAll([const HomeRoute()]);
                  },
                  child: Text("Save & Exit",
                      style: GoogleFonts.openSans(
                          fontSize: 17, fontWeight: FontWeight.bold)),
                ),
              );
      },
    );
  }

  void _refresh(BuildContext context) {
    context.read<JourneysBloc>().add(const JourneysEvent.refreshed());
  }

  Future<void> _showModalMessage(BuildContext context) {
    return showAdaptiveDialog<void>(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        content: Text(
          "Remember, repetition is key\r\n\r\nCome back and rehearse this script (read it with intention) every night at bedtime",
          style: GoogleFonts.openSans(color: CustomColors.white),
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.router.popForced();
            },
            child: Text("Ok",
                style: GoogleFonts.openSans(
                    fontSize: 17, fontWeight: FontWeight.bold)),
          )
        ],
      ),
    );
  }
}
