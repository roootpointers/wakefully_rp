// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flow_block.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FlowBlockImpl _$$FlowBlockImplFromJson(Map<String, dynamic> json) =>
    _$FlowBlockImpl(
      id: (json['id'] as num).toInt(),
      flowId: (json['flowId'] as num).toInt(),
      message: Message.fromJson(json['message'] as Map<String, dynamic>),
      journeyId: json['journeyId'] as String,
      nextStep: (json['nextStep'] as num?)?.toInt(),
      action: json['action'] as String?,
      goToFlowBlockId: (json['goToFlowBlockId'] as num?)?.toInt(),
      showProcessing: json['showProcessing'] as bool,
      parameters: (json['parameters'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const <String, String>{},
    );

Map<String, dynamic> _$$FlowBlockImplToJson(_$FlowBlockImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'flowId': instance.flowId,
      'message': instance.message,
      'journeyId': instance.journeyId,
      'nextStep': instance.nextStep,
      'action': instance.action,
      'goToFlowBlockId': instance.goToFlowBlockId,
      'showProcessing': instance.showProcessing,
      'parameters': instance.parameters,
    };
