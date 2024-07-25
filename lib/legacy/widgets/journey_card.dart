import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wakefully_analyzer/app_router.gr.dart';
import 'package:wakefully_analyzer/legacy/figma_sizer.dart';
import 'package:wakefully_analyzer/legacy/widgets/coming_soon_badge.dart';

import '../../resources.dart';
import '../custom_colors.dart';
import 'expanded_section.dart';

class JourneyCard extends StatefulWidget {
  final String titleText;
  final String? subtitleText;
  final Color? subtitleTextColor;
  final Widget? expandedContent;
  final Function? onStart;
  final bool addCommingSoonBadge;
  final bool isSubscribed;
  final bool superScript;

  const JourneyCard({
    super.key,
    required this.titleText,
    this.subtitleText,
    this.subtitleTextColor,
    this.addCommingSoonBadge = false,
    this.isSubscribed = false,
    this.onStart,
    this.expandedContent,
    this.superScript = false,
  });

  @override
  State<JourneyCard> createState() => _JourneyCardState();
}

class _JourneyCardState extends State<JourneyCard> {
  bool isExpanded = false;
  final animationDuration = const Duration(milliseconds: 250);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Stack(
          children: [
            InkWell(
              onTap: () {
                if (widget.isSubscribed) {
                  widget.onStart?.call();
                } else {
                  context.router.push(const PaywallRoute());
                }
              },
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: isExpanded
                      ? CustomColors.darkBlue
                      : CustomColors.anxiousTeal10,
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(
                    color: isExpanded
                        ? CustomColors.anxiousTeal_0
                        : Colors.transparent,
                    style: BorderStyle.solid,
                    width: 1.0,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                flex: 4,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                          text: widget.titleText,
                                          style: GoogleFonts.lora(
                                            color: CustomColors.anxiousTeal_0,
                                            fontSize: 21.fsp,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        if (widget.superScript)
                                          WidgetSpan(
                                            child: Transform.translate(
                                              offset: const Offset(5, -15),
                                              child: Text(
                                                'TM',
                                                style: GoogleFonts.lora(
                                                  color: CustomColors
                                                      .anxiousTeal_0,
                                                  fontSize: 10.fsp,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ),
                                          ),
                                      ]),
                                    ),
                                    if (widget.subtitleText != null) ...[
                                      const SizedBox(height: 8.0),
                                      FractionallySizedBox(
                                        widthFactor: .8,
                                        child: Text(
                                          widget.subtitleText!,
                                          style: GoogleFonts.openSans(
                                            color: widget.subtitleTextColor ??
                                                Colors.grey[400],
                                            fontSize: 14.fsp,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ],
                                ),
                              ),
                              Expanded(
                                  flex: 2,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      if (widget.addCommingSoonBadge) ...[
                                        const ComingSoonBadge(),
                                      ],
                                    ],
                                  ))
                            ],
                          ),
                          if (widget.expandedContent != null)
                            ExpandedSection(
                              duration: animationDuration,
                              expand: isExpanded,
                              child: widget.expandedContent!,
                            ),
                        ],
                      ),
                      widget.addCommingSoonBadge
                          ? Container()
                          : Positioned(
                              right: 0,
                              bottom: -10,
                              child: Container(
                                height: 35,
                                width: 35,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: CustomColors.goldish,
                                ),
                                child: Center(
                                    child: SvgPicture.asset(
                                  widget.isSubscribed
                                      ? Resources.icons.arrowRight
                                      : Resources.icons.lock,
                                  colorFilter: ColorFilter.mode(
                                    widget.isSubscribed
                                        ? CustomColors.anxiousTeal_0
                                        : CustomColors.black,
                                    BlendMode.srcIn,
                                  ),
                                )),
                              )),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ExpandedContent extends StatelessWidget {
  final String description;
  final String helpsWith;

  const ExpandedContent({
    super.key,
    required this.description,
    required this.helpsWith,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 24.fh),
        Text(
          description,
          style: GoogleFonts.openSans(
            fontSize: 14,
            color: Colors.grey[400],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 16.fh),
          child: const Divider(height: 1, color: CustomColors.anxiousTeal_0),
        ),
        Text(
          'Helps with',
          style: GoogleFonts.openSans(
            fontSize: 11,
            color: Colors.grey[400],
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 2),
        Text(
          helpsWith,
          style: GoogleFonts.openSans(
            fontSize: 13,
            color: Colors.grey[400],
          ),
        ),
      ],
    );
  }
}
