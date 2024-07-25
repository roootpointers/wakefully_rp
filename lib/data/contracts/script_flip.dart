import 'package:freezed_annotation/freezed_annotation.dart';

part 'script_flip.freezed.dart';
part 'script_flip.g.dart';

@freezed
class ScriptFlip with _$ScriptFlip {
  factory ScriptFlip({
    required String journeyId,
    required String content,
    required DateTime created,
  }) = _ScriptFlip;

  factory ScriptFlip.fromJson(Map<String, dynamic> json) =>
      _$ScriptFlipFromJson(json);
}
