// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dream.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DreamImpl _$$DreamImplFromJson(Map<String, dynamic> json) => _$DreamImpl(
      id: json['id'] as String,
      title: json['title'] as String?,
      content: json['content'] as String,
      completedFlowIds: (json['completedFlowIds'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          const [],
      created: DateTime.parse(json['created'] as String),
    );

Map<String, dynamic> _$$DreamImplToJson(_$DreamImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'completedFlowIds': instance.completedFlowIds,
      'created': instance.created.toIso8601String(),
    };
