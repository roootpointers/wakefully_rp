import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wakefully_analyzer/legacy/custom_colors.dart';
import 'package:wakefully_analyzer/utils/int_callback.dart';

import '../resources.dart';

class JourneyFilterButton extends StatelessWidget {
  final int? selectedFlowId;
  final NullableIntCallback onChanged;

  const JourneyFilterButton(
      {super.key, required this.onChanged, this.selectedFlowId});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: double.infinity,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _JourneyFilterButtonSegment(
                  icon: Resources.icons.cloud,
                  label: "Dream Decoder",
                  isSelected: selectedFlowId == Flows.dreamDecoder.id,
                  backgroundColor: const Color(0xE6C6B0DB),
                  onTap: () => onChanged(Flows.dreamDecoder.id)),
              const SizedBox(width: 24),
              _JourneyFilterButtonSegment(
                  icon: Resources.icons.cloudLightning,
                  label: "Dream Rescript",
                  isSelected: selectedFlowId == Flows.dreamRescript.id,
                  backgroundColor: const Color(0xE6E3A6A2),
                  onTap: () => onChanged(Flows.dreamRescript.id)),
              const SizedBox(width: 24),
              _JourneyFilterButtonSegment(
                  icon: Resources.icons.cloudEyes,
                  label: "Dream Persona",
                  isSelected: selectedFlowId == Flows.dreamPersona.id,
                  backgroundColor: const Color(0xE6B0C4A7),
                  onTap: () => onChanged(Flows.dreamPersona.id)),
              const SizedBox(width: 24),
              _JourneyFilterButtonSegment(
                  icon: Resources.icons.cloudRain,
                  label: "Dream Manifester",
                  isSelected: selectedFlowId == Flows.dreamManifester.id,
                  backgroundColor: const Color(0xE6DDE2EA),
                  onTap: () => onChanged(Flows.dreamManifester.id)),
            ],
          ),
        ),
      ],
    );
  }
}

extension FlowExtension on Flows {
  int get id {
    switch (this) {
      case Flows.dreamDecoder:
        return 2;
      case Flows.dreamRescript:
        return 3;
      case Flows.dreamPersona:
        return 4;
      case Flows.dreamManifester:
        return 5;
      default:
        return -1;
    }
  }
}

enum Flows { dreamDecoder, dreamRescript, dreamPersona, dreamManifester }

class _JourneyFilterButtonSegment extends StatelessWidget {
  const _JourneyFilterButtonSegment(
      {super.key,
      required this.icon,
      required this.label,
      required this.isSelected,
      this.backgroundColor = Colors.transparent,
      required this.onTap});

  final String icon;
  final String label;
  final bool isSelected;
  final Color backgroundColor;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: isSelected ? const Color(0xFFF2D479) : Colors.transparent,
            width: 1,
          ),
          color: backgroundColor,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: SizedBox(
          width: 60,
          height: 80,
          child: Padding(
            padding: const EdgeInsets.only(top: 9),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SvgPicture.asset(icon),
                const Spacer(),
                Text(
                  label,
                  style: GoogleFonts.inter(
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                    color: CustomColors.darkBlue,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
