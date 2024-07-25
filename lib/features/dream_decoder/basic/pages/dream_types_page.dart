import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wakefully_analyzer/core/app/widgets/title_bar.dart';
import 'package:wakefully_analyzer/core/page_state.dart';
import 'package:wakefully_analyzer/legacy/widgets/wakefully_progress_indicator.dart';

import '../../../../core/error_view.dart';
import '../../../../legacy/custom_colors.dart';
import '../../../../legacy/widgets/page_title.dart';
import '../bloc/basic_dream_decoder_bloc.dart';
import '../widgets/dream_type_list_item.dart';
import '../widgets/premium_upsell.dart';

@RoutePage()
class DreamTypesPage extends StatelessWidget {
  const DreamTypesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: SafeArea(
        child: Scaffold(
          body: BlocBuilder<BasicDreamDecoderBloc, BasicDreamDecoderState>(
            builder: (context, state) {
              return Column(
                children: [
                  const SizedBox(height: 24),
                  const TitleBar(
                    child: PageTitle(
                      title: "Dream Decoder",
                      superscript: "\u2122",
                    ),
                  ),
                  const SizedBox(height: 24),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Text(
                        "Begin your analysis by selecting a dream type from the list below:",
                        style: GoogleFonts.openSans(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                            color: CustomColors.white)),
                  ),
                  const SizedBox(height: 6),
                  BlocBuilder<BasicDreamDecoderBloc, BasicDreamDecoderState>(
                    builder: (context, state) {
                      return switch (state.pageStatus) {
                        PageStateInitial() => Container(),
                        PageStateLoading() =>
                          const WakefullyProgressIndicator(),
                        PageStateSuccess() => const _DreamTypesList(),
                        PageStateFailure() => const ErrorView(),
                      };
                    },
                  ),
                  switch (state.pageStatus) {
                    PageStateLoading() => const Spacer(),
                    PageStateFailure() ||
                    PageStateInitial() ||
                    PageStateSuccess() =>
                      Container(),
                  },
                  const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
                    child: PremiumUpsell(),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

class _DreamTypesList extends StatelessWidget {
  const _DreamTypesList();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<BasicDreamDecoderBloc, BasicDreamDecoderState>(
        builder: (context, state) {
          return ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              itemBuilder: ((context, index) {
                final dreamType = state.dreamTypes[index];
                return DreamTypeListItem(dreamType);
              }),
              separatorBuilder: (_, __) => const SizedBox(
                    height: 4,
                  ),
              itemCount: state.dreamTypes.length);
        },
      ),
    );
  }
}
