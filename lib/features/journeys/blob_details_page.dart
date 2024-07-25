import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../../core/app/widgets/title_bar.dart';
import '../../data/contracts/blob.dart';
import '../../legacy/custom_colors.dart';

@RoutePage()
class BlobDetailsPage extends StatelessWidget {
  final Blob blob;

  const BlobDetailsPage({super.key, required this.blob});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColors.darkBlue_0,
      child: SafeArea(
        child: Scaffold(
            backgroundColor: CustomColors.darkBlue_0,
            body: SingleChildScrollView(
              child: Column(
                children: [
                  TitleBar(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: Text(
                            blob.title,
                            style: GoogleFonts.lora(
                              color: CustomColors.anxiousTeal_0,
                              fontSize: 32,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Text(
                          DateFormat.yMMMMd().format(blob.created),
                          textAlign: TextAlign.center,
                          style: GoogleFonts.openSans(
                            fontSize: 12,
                            color: CustomColors.gray4,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        color: CustomColors.anxiousTeal_1,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30.0, vertical: 20),
                          child: Column(
                            children: [
                              Text(
                                blob.content,
                                style: GoogleFonts.openSans(
                                    fontSize: 16, color: CustomColors.black),
                              ),
                            ],
                          ),
                        )),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
