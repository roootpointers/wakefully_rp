import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:wakefully_analyzer/app_router.gr.dart';

@RoutePage()
class DebugPage extends StatelessWidget {
  const DebugPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child: Text(AppLocalizations.of(context)!.debug)),
        TextButton(
            onPressed: () => context.router.push(const HomeRoute()),
            child: const Text("Go to home page")),
      ],
    );
  }
}
