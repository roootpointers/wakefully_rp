import 'package:freezed_annotation/freezed_annotation.dart';

part 'continue_flow_params.freezed.dart';
part 'continue_flow_params.g.dart';

@freezed
class ContinueFlowParams with _$ContinueFlowParams {
  factory ContinueFlowParams(
      {required int flowId,
      required int step,
      required String journeyId,
      @Default({}) Map<String, String> parameters}) = _ContinueFlowParams;

  factory ContinueFlowParams.fromJson(Map<String, dynamic> json) =>
      _$ContinueFlowParamsFromJson(json);
}
