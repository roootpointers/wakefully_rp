// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'script_flip.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScriptFlipImpl _$$ScriptFlipImplFromJson(Map<String, dynamic> json) =>
    _$ScriptFlipImpl(
      journeyId: json['journeyId'] as String,
      content: json['content'] as String,
      created: DateTime.parse(json['created'] as String),
    );

Map<String, dynamic> _$$ScriptFlipImplToJson(_$ScriptFlipImpl instance) =>
    <String, dynamic>{
      'journeyId': instance.journeyId,
      'content': instance.content,
      'created': instance.created.toIso8601String(),
    };
