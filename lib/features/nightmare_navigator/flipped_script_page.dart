import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wakefully_analyzer/data/contracts/script_flip.dart';
import 'package:wakefully_analyzer/widgets/constrained_scroll_view.dart';

import '../../legacy/custom_colors.dart';

@RoutePage()
class FlippedScriptPage extends StatelessWidget {
  final ScriptFlip scriptFlip;

  const FlippedScriptPage(this.scriptFlip, {super.key});

  _showKeepPracticing(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(
              "Keep practicing",
              style: GoogleFonts.openSans(color: CustomColors.white),
            ),
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            content: Text(
              "Bravo! You've done great today. Make sure to drop by tomorrow for an encore.\r\n\r\n"
              "Remember, practice makes perfect!\r\n\r\n"
              "Keep rehearsing your new ending. This repetition helps calm your mind before sleep, reducing those pesky nightmares and turning them into dreamy adventures.\r\n\r\n"
              "Keep going, you're doing splendidly!",
              style: GoogleFonts.openSans(color: CustomColors.white),
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    context.router.popUntilRoot();
                  },
                  child: const Text("Ok"))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    var headingTextStyle =
        GoogleFonts.lora(fontSize: 20, color: CustomColors.anxiousTeal_0);

    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: SafeArea(
        child: Scaffold(
          body: ConstrainedScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Here's your previously created flipped script.",
                    style: headingTextStyle,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Read it like you mean it. At least twice.",
                    style: headingTextStyle,
                  ),
                  const SizedBox(height: 20),
                  Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      color: CustomColors.anxiousTeal_1,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30.0, vertical: 20),
                        child: Text(scriptFlip.content,
                            style: GoogleFonts.openSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: CustomColors.black)),
                      )),
                  const Spacer(),
                  SizedBox(
                    height: 56,
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () {
                        _showKeepPracticing(context);
                      },
                      child: Text("Ok done",
                          style: GoogleFonts.openSans(
                              fontSize: 17, fontWeight: FontWeight.bold)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
