import 'dart:math';

import '../gradients.dart';
import 'blob_info.dart';

class CustomBlobs {
  CustomBlobs._();

  static final happyBlob = BlobInfo(
    gradient: CustomGradients.happyGradient,
    size: 300,
    id: '4-8-83',
  );

  static final excitedBlob = BlobInfo(
    gradient: CustomGradients.excitedGradient,
    size: 300,
    id: '5-7-43',
  );

  static final angryBlob = BlobInfo(
    gradient: CustomGradients.angryGradient,
    size: 300,
    id: '6-4-5',
  );

  static final anxiousBlob = BlobInfo(
    gradient: CustomGradients.anxiousGradient,
    size: 300,
    id: '5-6-1294',
  );

  static final sadBlob = BlobInfo(
    gradient: CustomGradients.sadGradient,
    size: 300,
    id: '5-6-87851',
  );

  static final calmBlob = BlobInfo(
    gradient: CustomGradients.calmGradient,
    size: 300,
    id: '5-6-87851',
  );

  static final List<BlobInfo> _blobs = [
    CustomBlobs.happyBlob,
    CustomBlobs.excitedBlob,
    CustomBlobs.angryBlob,
    CustomBlobs.anxiousBlob,
    CustomBlobs.sadBlob,
    CustomBlobs.calmBlob,
  ];

  static BlobInfo get randomBlob => _blobs[Random().nextInt(_blobs.length)];
}
