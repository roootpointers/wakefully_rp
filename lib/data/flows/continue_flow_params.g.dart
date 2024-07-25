// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'continue_flow_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContinueFlowParamsImpl _$$ContinueFlowParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$ContinueFlowParamsImpl(
      flowId: (json['flowId'] as num).toInt(),
      step: (json['step'] as num).toInt(),
      journeyId: json['journeyId'] as String,
      parameters: (json['parameters'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const {},
    );

Map<String, dynamic> _$$ContinueFlowParamsImplToJson(
        _$ContinueFlowParamsImpl instance) =>
    <String, dynamic>{
      'flowId': instance.flowId,
      'step': instance.step,
      'journeyId': instance.journeyId,
      'parameters': instance.parameters,
    };
