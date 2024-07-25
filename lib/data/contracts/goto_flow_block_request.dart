import 'package:freezed_annotation/freezed_annotation.dart';

part 'goto_flow_block_request.freezed.dart';
part 'goto_flow_block_request.g.dart';

@freezed
class GotoFlowBlockRequest with _$GotoFlowBlockRequest {
  factory GotoFlowBlockRequest(
          String? journeyId, int flowBlockId, Map<String, String> parameters) =
      _GotoFlowBlockRequest;

  factory GotoFlowBlockRequest.fromJson(Map<String, dynamic> json) =>
      _$GotoFlowBlockRequestFromJson(json);
}
