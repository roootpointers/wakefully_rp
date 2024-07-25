import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wakefully_analyzer/app_router.gr.dart';
import 'package:wakefully_analyzer/features/dream_decoder/widgets/dream_decoder_title_bar.dart';

import '../../../../legacy/custom_colors.dart';
import '../../../../resources.dart';
import '../bloc/basic_dream_decoder_bloc.dart';

class DreamSubTypeListItem extends StatelessWidget {
  final String _name;

  const DreamSubTypeListItem(
    this._name, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BasicDreamDecoderBloc, BasicDreamDecoderState>(
      builder: (context, state) {
        return Card(
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          color: CustomColors.anxiousTeal_10,
          child: InkWell(
            onTap: () {
              context.router.push(ChatRouter(
                  idOrSlug: 'basic',
                  parameters: {
                    'dream_topic': state.selectedDreamType!.name,
                    'dream_main_event': _name
                  },
                  resultsTitleChild: const DreamDecoderTitleBar()));
            },
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 13),
              child: Row(
                children: [
                  Expanded(
                    child: Text(_name,
                        style: GoogleFonts.openSans(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                            color: CustomColors.anxiousTeal_0)),
                  ),
                  SvgPicture.asset(
                    Resources.icons.arrowRight,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
