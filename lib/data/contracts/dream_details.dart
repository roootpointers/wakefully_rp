import 'package:freezed_annotation/freezed_annotation.dart';

import 'flow_result.dart';

part 'dream_details.freezed.dart';
part 'dream_details.g.dart';

@freezed
class DreamDetails with _$DreamDetails {
  factory DreamDetails(
      {String? title,
      required String content,
      required DateTime created,
      @Default([]) List<FlowResult> results}) = _DreamDetails;

  factory DreamDetails.fromJson(Map<String, dynamic> json) =>
      _$DreamDetailsFromJson(json);
}
