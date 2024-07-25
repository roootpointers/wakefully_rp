// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'goto_flow_block_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GotoFlowBlockRequestImpl _$$GotoFlowBlockRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$GotoFlowBlockRequestImpl(
      json['journeyId'] as String?,
      (json['flowBlockId'] as num).toInt(),
      Map<String, String>.from(json['parameters'] as Map),
    );

Map<String, dynamic> _$$GotoFlowBlockRequestImplToJson(
        _$GotoFlowBlockRequestImpl instance) =>
    <String, dynamic>{
      'journeyId': instance.journeyId,
      'flowBlockId': instance.flowBlockId,
      'parameters': instance.parameters,
    };
