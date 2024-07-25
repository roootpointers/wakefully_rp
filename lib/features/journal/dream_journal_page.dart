import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wakefully_analyzer/app_router.gr.dart';
import 'package:wakefully_analyzer/utils/date_formatting.dart';

import '../../data/contracts/dream.dart';
import '../../legacy/custom_colors.dart';
import '../../resources.dart';
import '../../widgets/journey_filter_button.dart';
import '../dreams/bloc/dreams_bloc.dart';

@RoutePage(name: "DreamJournalRouter")
class DreamJournalPage extends StatelessWidget {
  const DreamJournalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<DreamsBloc, DreamsState>(
        builder: (context, state) {
          return state.dreams.isNotEmpty
              ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: Column(
                      children: [
                        const _SearchBar(),
                        const SizedBox(height: 16),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text('Journey Filters',
                              style: GoogleFonts.inter(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: CustomColors.anxiousTeal_0,
                              )),
                        ),
                        const SizedBox(height: 4),
                        JourneyFilterButton(
                          onChanged: (value) => {},
                        ),
                        const SizedBox(height: 4),
                        Expanded(child: _DreamList(state.dreams)),
                      ],
                    ),
                  ),
                )
              : Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(Resources.images.cloudAdd),
                      const SizedBox(height: 16),
                      Text("Add your first dream",
                          style: GoogleFonts.lora(
                              fontSize: 20, color: CustomColors.anxiousTeal_0)),
                    ],
                  ),
                );
        },
      ),
    );
  }
}

class _SearchBar extends StatelessWidget {
  const _SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Find a dream',
        hintStyle: const TextStyle(color: Color(0x4D1F4074)),
        fillColor: Colors.white,
        filled: true,
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12.0)),
          borderSide: BorderSide(color: Colors.transparent),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12.0)),
          borderSide: BorderSide(color: Colors.blue),
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset(Resources.icons.searchCloud),
        ),
      ),
    );
  }
}

class _DreamList extends StatelessWidget {
  final List<Dream> dreams;
  const _DreamList(this.dreams, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dreams.length,
      itemBuilder: (context, index) {
        var dream = dreams[index];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: _DreamListItem(dream: dream),
        );
      },
    );
  }
}

class _DreamListItem extends StatelessWidget {
  const _DreamListItem({
    super.key,
    required this.dream,
  });

  final Dream dream;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 88,
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            context.router.push(DreamDetailsRoute(id: dream.id));
          },
          child: Card(
            color: const Color(0xFF8F9FB9),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        dream.created.day.toString().padLeft(2, '0'),
                        style:
                            GoogleFonts.lora(fontSize: 24, color: Colors.white),
                      ),
                      Text(getMonthName(dream.created.month),
                          style: GoogleFonts.openSans(fontSize: 14)),
                    ],
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(dream.title ?? 'Untitled',
                            style: GoogleFonts.lora(
                                fontSize: 20, color: CustomColors.darkBlue_0)),
                      ],
                    ),
                  ),
                  const SizedBox(width: 16),
                  _DreamBadges(completedFlowIds: dream.completedFlowIds)
                ],
              ),
            ),
          ),
        ));
  }
}

class _DreamBadges extends StatelessWidget {
  final List<int> completedFlowIds;

  const _DreamBadges({super.key, required this.completedFlowIds});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      width: 62,
      child: completedFlowIds.isEmpty
          ? Container()
          : UniformGrid(
              children: completedFlowIds
                  .map((flowId) => _DreamBadge(flowId: flowId))
                  .toList(growable: false)),
    );
  }
}

class UniformGrid extends StatelessWidget {
  final List<Widget> children;

  const UniformGrid({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    if (children.isEmpty) {
      return Container();
    }

    if (children.length == 1) {
      return children.first;
    }

    return Center(
      child: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 2,
        crossAxisSpacing: 2,
        children: children,
      ),
    );
  }
}

class _DreamBadge extends StatelessWidget {
  final int flowId;

  const _DreamBadge({super.key, required this.flowId});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: _getColor(),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: SvgPicture.asset(
              _getIcon(),
            ),
          ),
        ));
  }

  String _getIcon() {
    return switch (flowId) {
      2 => Resources.icons.cloud,
      3 => Resources.icons.cloudLightning,
      4 => Resources.icons.cloudEyes,
      5 => Resources.icons.cloudRain,
      _ => Resources.icons.cloud
    };
  }

  Color _getColor() {
    switch (flowId) {
      case 2:
        return const Color(0xE6C6B0DB);
      case 3:
        return const Color(0xFFE3A6A2);
      case 4:
        return const Color(0xE6B0C4A7);
      case 5:
        return const Color(0xE6DDE2EA);
      default:
        return const Color(0xFFDDE2EA);
    }
  }
}
