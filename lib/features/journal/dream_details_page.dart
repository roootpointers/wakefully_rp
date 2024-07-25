import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:styled_text/widgets/styled_text.dart';
import 'package:wakefully_analyzer/core/page_state.dart';
import 'package:wakefully_analyzer/data/contracts/flow_result.dart';
import 'package:wakefully_analyzer/features/journal/cubit/dream_details_cubit.dart';
import 'package:wakefully_analyzer/legacy/widgets/wakefully_progress_indicator.dart';
import 'package:wakefully_analyzer/utils/style_text_tags.dart';

import '../../data/contracts/dream_details.dart';
import '../../dependency_container.dart';
import '../../legacy/custom_colors.dart';
import '../../resources.dart';
import '../../utils/date_formatting.dart';
import '../../widgets/journey_filter_button.dart';

@RoutePage()
class DreamDetailsPage extends StatelessWidget implements AutoRouteWrapper {
  final String id;

  const DreamDetailsPage(this.id, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: SafeArea(
        child: Scaffold(
          body: BlocBuilder<DreamDetailsCubit, DreamDetailsState>(
            builder: (context, state) {
              return switch (state.pageStatus) {
                PageStateLoading() ||
                PageStateInitial() =>
                  const WakefullyProgressIndicator(),
                PageStateFailure error => Text(error.message!),
                PageStateSuccess() => _DreamDetailsView(state.details!, id),
              };
            },
          ),
        ),
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<DreamDetailsCubit>(param1: id),
      child: this,
    );
  }
}

class _DreamDetailsView extends StatefulWidget {
  final DreamDetails details;
  final String dreamId;

  const _DreamDetailsView(this.details, this.dreamId, {super.key});

  @override
  State<_DreamDetailsView> createState() => _DreamDetailsViewState();
}

class _DreamDetailsViewState extends State<_DreamDetailsView> {
  int? _resultsViewId;
  bool get _resultsViewShowing => false; //_resultsViewId != null;
  String? _content;

  final Color _cardColor = const Color(0x80FFFFFF);

  final TextStyle _bodyStyle = GoogleFonts.openSans(
    fontSize: 16,
    color: CustomColors.darkBlue,
    fontWeight: FontWeight.w600,
  );

  @override
  void initState() {
    _content = _getContent(_resultsViewId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 32),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: _cardColor,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 17),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        widget.details.created.day.toString().padLeft(2, '0'),
                        style:
                            GoogleFonts.lora(fontSize: 24, color: Colors.white),
                      ),
                      Text(getMonthName(widget.details.created.month),
                          style: GoogleFonts.openSans(fontSize: 14)),
                    ],
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.details.title ?? 'Untitled',
                            style: GoogleFonts.lora(
                                fontSize: 20, color: CustomColors.darkBlue)),
                      ],
                    ),
                  ),
                  const SizedBox(width: 16),
                  Align(
                    alignment: Alignment.topRight,
                    child: GestureDetector(
                        onTap: () => context.router.maybePop(),
                        child: SvgPicture.asset(Resources.icons.close)),
                  )
                ],
              ),
              _resultsViewShowing
                  ? Column(
                      children: [
                        ConstrainedBox(
                            constraints: const BoxConstraints(maxHeight: 35),
                            child: const SizedBox.expand()),
                        Align(
                          alignment: Alignment.topLeft,
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                _setActiveView(null);
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16.0, vertical: 8.0),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: CustomColors.darkBlue, width: 2.0),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Text(
                                'Your Dream',
                                style: GoogleFonts.inter(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                    color: CustomColors.darkBlue),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  : const SizedBox(
                      height: 12,
                    ),
              const SizedBox(height: 8),
              Expanded(
                child: SingleChildScrollView(
                  child: _content?.isNotEmpty ?? false
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            StyledText(
                                style: _bodyStyle,
                                tags: addGlobalTags(_bodyStyle),
                                text: _content!),
                          ],
                        )
                      : const Text('Journey start text goes here'),
                ),
              ),
              const SizedBox(height: 16),
              JourneyFilterButton(
                selectedFlowId: _resultsViewId,
                onChanged: _setActiveView,
              ),
            ],
          ),
        ),
      ),
    );
  }

  String? _getContent(int? flowId) {
    if (flowId == null) {
      return widget.details.content;
    }

    FlowResult? result = widget.details.results.firstWhereOrNull(
      (result) => result.flowId == flowId,
    );

    return result?.result;
  }

  void _setActiveView(int? id) {
    setState(() {
      _resultsViewId = _resultsViewId == id ? null : id;
      _content = _getContent(_resultsViewId);
    });
  }
}
