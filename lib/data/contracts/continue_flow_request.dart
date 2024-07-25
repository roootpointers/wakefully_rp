import 'package:freezed_annotation/freezed_annotation.dart';

part 'continue_flow_request.freezed.dart';
part 'continue_flow_request.g.dart';

@freezed
class ContinueFlowRequest with _$ContinueFlowRequest {
  factory ContinueFlowRequest(
      String journeyId, Map<String, String> parameters) = _ContinueFlowRequest;

  factory ContinueFlowRequest.fromJson(Map<String, dynamic> json) =>
      _$ContinueFlowRequestFromJson(json);
}
