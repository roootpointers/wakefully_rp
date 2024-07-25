import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../app_router.gr.dart';
import '../journeys/bloc/journeys_bloc.dart';

class PersonalityQuizResultsActions extends StatelessWidget {
  const PersonalityQuizResultsActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SizedBox(
        height: 56,
        width: double.infinity,
        child: TextButton(
          onPressed: () {
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
