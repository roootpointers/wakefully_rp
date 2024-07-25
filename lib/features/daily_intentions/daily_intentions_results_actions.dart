import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wakefully_analyzer/core/app/bloc/app_bloc.dart';
import 'package:wakefully_analyzer/features/journeys/bloc/journeys_bloc.dart';

import '../../app_router.gr.dart';

class DailyIntentionsResultsActions extends StatelessWidget {
  const DailyIntentionsResultsActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SizedBox(
        height: 56,
        width: double.infinity,
        child: TextButton(
          onPressed: () {
            context
                .read<AppBloc>()
                .add(const AppEvent.dailyIntentionJournalCompleted());
            context.read<JourneysBloc>().add(const JourneysEvent.refreshed());
            context.router.replaceAll([const HomeRoute()]);
          },
          child: Text("Save & Exit",
              style: GoogleFonts.openSans(
                  fontSize: 17, fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
