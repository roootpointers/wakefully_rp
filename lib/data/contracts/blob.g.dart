// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blob.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BlobImpl _$$BlobImplFromJson(Map<String, dynamic> json) => _$BlobImpl(
      json['title'] as String,
      json['content'] as String,
      DateTime.parse(json['created'] as String),
    );

Map<String, dynamic> _$$BlobImplToJson(_$BlobImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'content': instance.content,
      'created': instance.created.toIso8601String(),
    };
