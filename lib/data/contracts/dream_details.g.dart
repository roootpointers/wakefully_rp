// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dream_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DreamDetailsImpl _$$DreamDetailsImplFromJson(Map<String, dynamic> json) =>
    _$DreamDetailsImpl(
      title: json['title'] as String?,
      content: json['content'] as String,
      created: DateTime.parse(json['created'] as String),
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => FlowResult.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$DreamDetailsImplToJson(_$DreamDetailsImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'content': instance.content,
      'created': instance.created.toIso8601String(),
      'results': instance.results,
    };
