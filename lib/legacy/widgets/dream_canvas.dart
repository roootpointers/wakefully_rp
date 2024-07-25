import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:blobs/blobs.dart' as external_blobs;
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:wakefully_analyzer/legacy/figma_sizer.dart';
import 'package:wakefully_analyzer/legacy/widgets/blobs/dream_mapper.dart';

import '../../app_router.gr.dart';
import '../../data/contracts/blob.dart';
import '../custom_colors.dart';
import 'blobs/blob_info.dart';
import 'blobs/dream_blob.dart';
import 'diagonal_scroll_view/diagonal_scroll_view.dart';

class DreamCanvas extends StatefulWidget {
  final List<Blob> _blobs;

  const DreamCanvas(this._blobs, {super.key});

  @override
  State<DreamCanvas> createState() => _DreamCanvasState();
}

class _DreamCanvasState extends State<DreamCanvas> {
  final double blobSize = 300;

  late double _boxHeight = 5000;

  double get boxHeight {
    return _boxHeight;
  }

  late double _boxWidth = 5000;

  double get boxWidth {
    return _boxWidth;
  }

  String formattedDate(DateTime date) => DateFormat('MMM. d, y').format(date);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        DiagonalScrollView(
          enableZoom: true,
          onCreated: (contoller) {
            contoller.moveTo(
                location: Offset(boxWidth / 2 - 190, boxHeight / 2 - 360));
          },
          child: Container(
            width: boxWidth,
            height: boxHeight,
            color: CustomColors.darkBlue,
            child: Center(
              child: Stack(
                alignment: Alignment.center,
                children: _getChildren(
                    widget._blobs.map((e) => e.toDreamBlob).toList(), context),
              ),
            ),
          ),
        ),
      ],
    );
  }

  List<DreamBlob> _setBlobPositions(List<DreamBlob> dreamBlobs) {
    int currentCap = 6;
    double anglePerStep = 2 * pi / currentCap;
    double currentRadius = blobSize * 0.8;
    double currentAngle = -pi / 2;
    int ringNumber = 1;
    double accumulatedAngle = 0;

    _boxWidth = 2 * blobSize * (ringNumber + 1);
    _boxHeight = 2 * blobSize * (ringNumber + 2);

    return dreamBlobs.mapIndexed((index, element) {
      if (accumulatedAngle.abs() - 1.95 * pi >= 0 || index > currentCap) {
        ringNumber++;
        currentRadius += blobSize * 0.9;
        anglePerStep /= 2 / (ringNumber * 1.45) + 1;
        currentCap = currentCap * 2 + currentCap;
        accumulatedAngle = 0;
        currentAngle = ringNumber.isOdd ? -pi / 2 : -pi / 4;
      }

      final x = index == 0 ? 0.0 : currentRadius * cos(currentAngle);
      final y = index == 0 ? 0.0 : currentRadius * sin(currentAngle);

      if (index > 0) {
        currentAngle += anglePerStep;
        accumulatedAngle += anglePerStep;
      }

      return element.copyWith(offset: Offset(x, y));
    }).toList();
  }

  List<Widget> _getChildren(List<DreamBlob> dreamBlobs, BuildContext context) {
    final children = <Widget>[];

    dreamBlobs = _setBlobPositions(dreamBlobs);

    // Show all blobs
    for (int index = 0; index < dreamBlobs.length; index++) {
      final dreamBlob = dreamBlobs[index];
      final blobInfo = dreamBlob.info;

      children.add(
        Positioned(
          left: (boxWidth / 2 - blobSize / 2) + dreamBlob.offset.dx,
          top: (boxHeight / 2 - blobSize / 2) + dreamBlob.offset.dy,
          child: _buildNewBlob(blobInfo, context, dreamBlob),
        ),
      );
    }

    return children;
  }

  ClipPath _buildNewBlob(
    BlobInfo blobInfo,
    BuildContext context,
    DreamBlob dreamBlob,
  ) {
    return ClipPath(
      clipper: external_blobs.BlobClipper(id: blobInfo.id),
      child: InkWell(
        highlightColor: CustomColors.anxiousTeal_0,
        onTap: () => {
          context.router.push(
            BlobDetailsRoute(
              blob: dreamBlob.blob,
            ),
          ),
        },
        child: Container(
          height: blobInfo.size,
          width: blobInfo.size,
          decoration: BoxDecoration(gradient: blobInfo.gradient),
          alignment: Alignment.center,
          child: SizedBox(
            width: blobInfo.size / 2.1,
            height: blobInfo.size / 2.1,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  dreamBlob.blob.title,
                  textAlign: TextAlign.center,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.openSans(
                    color: CustomColors.darkBlue,
                    fontSize: 17.fw,
                  ),
                ),
                SizedBox(height: 8.fh),
                Text(
                  formattedDate(dreamBlob.blob.created),
                  style: GoogleFonts.openSans(
                    color: const Color(0xCC1F2034),
                    fontSize: 13.fw,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
