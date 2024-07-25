import 'package:freezed_annotation/freezed_annotation.dart';

import 'message.dart';

part 'flow_block.freezed.dart';
part 'flow_block.g.dart';

@freezed
class FlowBlock with _$FlowBlock {
  factory FlowBlock({
    required int id,
    required int flowId,
    required Message message,
    required String journeyId,
    int? nextStep,
    String? action,
    int? goToFlowBlockId,
    required bool showProcessing,
    @Default(<String, String>{}) Map<String, String> parameters,
  }) = _FlowBlock;

  factory FlowBlock.fromJson(Map<String, dynamic> json) =>
      _$FlowBlockFromJson(json);
}
