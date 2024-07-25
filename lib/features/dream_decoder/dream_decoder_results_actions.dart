import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wakefully_analyzer/features/journeys/bloc/journeys_bloc.dart';

import '../../app_router.gr.dart';
import '../../core/chat/bloc/chat_bloc.dart';
import '../../legacy/custom_colors.dart';
import '../dreams/bloc/dreams_bloc.dart';
import '../purchases/bloc/purchases_bloc.dart';
import 'confirm_delete_page.dart';
import 'confirm_save_dream.dart';

class DreamDecoderResultsActions extends StatelessWidget {
  const DreamDecoderResultsActions({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatBloc, ChatState>(
      builder: (context, state) {
        var isBasic = state.flowId == 1;
        return Column(
          children: [
            isBasic ? const _ResultsPremiumUpsell() : Container(),
            SizedBox(
              height: 56,
              width: double.infinity,
              child: TextButton(
                onPressed: () {
                  var subsribed = _isSubscribed(context);
                  var journeysBloc = context.read<JourneysBloc>();
                  var dreamsBloc = context.read<DreamsBloc>();

                  subsribed || journeysBloc.state.blobs.isEmpty
                      ? dreamsBloc.add(DreamsEvent.dreamSaved(state.journeyId!))
                      : _showSaveConfirmation(context, state.journeyId!);
                },
                child: Text("Save Dream",
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
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                    side: const BorderSide(
                      color: CustomColors.anxiousTeal_0,
                      width: 1,
                    ),
                    foregroundColor: CustomColors.anxiousTeal_0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    )),
                onPressed: () => _showDeleteConfirmation(context),
                child: Text(
                  "No Thanks, Delete",
                  style: GoogleFonts.openSans(
                      fontSize: 17, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  _showDeleteConfirmation(BuildContext context) {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        builder: (context) => Wrap(children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * 0.65,
                color: Colors.transparent,
                child: Container(
                  decoration: const BoxDecoration(
                      color: CustomColors.darkBlue,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25.0),
                          topRight: Radius.circular(25.0))),
                  child: const ConfirmDeletePage(),
                ),
              )
            ]));
  }

  _showSaveConfirmation(BuildContext context, String journeyId) {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        builder: (context) => Wrap(children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * 0.65,
                color: Colors.transparent,
                child: Container(
                  decoration: const BoxDecoration(
                      color: CustomColors.darkBlue,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25.0),
                          topRight: Radius.circular(25.0))),
                  child: ConfirmSaveDream(journeyId),
                ),
              )
            ]));
  }

  bool _isSubscribed(BuildContext context) {
    var state = context.read<PurchasesBloc>().state;
    return switch (state) {
      InitializedPurchases() => state.subscribed,
      _ => false,
    };
  }
}

class _ResultsPremiumUpsell extends StatelessWidget {
  const _ResultsPremiumUpsell();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Text(
              "Unlock fully personalized dream analysis - Enter your own dreams in your own words, with Dream Decoder Premium\u2122",
              textAlign: TextAlign.center,
              style: GoogleFonts.lora(
                  fontWeight: FontWeight.bold,
                  color: CustomColors.anxiousTeal_0,
                  fontSize: 22)),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 56,
          width: double.infinity,
          child: TextButton(
            onPressed: () async {
              var result =
                  await context.router.push<bool>(const PaywallRoute());
              if (result!) {
                // ignore: use_build_context_synchronously
                if (!context.mounted) return;
                context.router.popAndPush(const PremiumDreamDecoderRouter());
              }
            },
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0))),
                backgroundColor: MaterialStateProperty.all(
                  CustomColors.goldish,
                )),
            child: Text("Try PREMIUM for 7 Days FREE",
                style: GoogleFonts.openSans(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.bold)),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
