import 'package:freezed_annotation/freezed_annotation.dart';

part 'goto_flow_block_params.freezed.dart';

@freezed
class GotoFlowBlockParams with _$GotoFlowBlockParams {
  factory GotoFlowBlockParams({
    required int flowId,
    required int flowBlockId,
    String? journeyId,
    required Map<String, String> parameters,
  }) = _GotoFlowBlockParams;
}
