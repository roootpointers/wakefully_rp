import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/contracts/blob.dart';
import 'blob_info.dart';

part 'dream_blob.freezed.dart';

@freezed
class DreamBlob with _$DreamBlob {
  factory DreamBlob(
      {required Blob blob,
      required BlobInfo info,
      @Default(Offset.zero) Offset offset}) = _DreamBlob;
}
