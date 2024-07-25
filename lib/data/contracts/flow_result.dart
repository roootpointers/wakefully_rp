import 'package:freezed_annotation/freezed_annotation.dart';

part 'flow_result.freezed.dart';
part 'flow_result.g.dart';

@freezed
class FlowResult with _$FlowResult {
  factory FlowResult(int flowId, String result) = _FlowResult;

  factory FlowResult.fromJson(Map<String, dynamic> json) =>
      _$FlowResultFromJson(json);
}
