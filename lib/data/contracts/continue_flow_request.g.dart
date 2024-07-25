// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'continue_flow_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContinueFlowRequestImpl _$$ContinueFlowRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ContinueFlowRequestImpl(
      json['journeyId'] as String,
      Map<String, String>.from(json['parameters'] as Map),
    );

Map<String, dynamic> _$$ContinueFlowRequestImplToJson(
        _$ContinueFlowRequestImpl instance) =>
    <String, dynamic>{
      'journeyId': instance.journeyId,
      'parameters': instance.parameters,
    };
