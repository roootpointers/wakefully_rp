// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageImpl _$$MessageImplFromJson(Map<String, dynamic> json) =>
    _$MessageImpl(
      content: json['content'] as String?,
      subContent: json['subContent'] as String?,
      sender: json['sender'] as String,
      choices: (json['choices'] as List<dynamic>?)
          ?.map((e) => Choice.fromJson(e as Map<String, dynamic>))
          .toList(),
      shouldHaveChoices: json['shouldHaveChoices'] as bool,
      allowTextInput: json['allowTextInput'] as bool,
      responseParameter: json['responseParameter'] as String?,
      selectedChoice: json['selectedChoice'] as String?,
      disableChoices: json['disableChoices'] as bool? ?? false,
    );

Map<String, dynamic> _$$MessageImplToJson(_$MessageImpl instance) =>
    <String, dynamic>{
      'content': instance.content,
      'subContent': instance.subContent,
      'sender': instance.sender,
      'choices': instance.choices,
      'shouldHaveChoices': instance.shouldHaveChoices,
      'allowTextInput': instance.allowTextInput,
      'responseParameter': instance.responseParameter,
      'selectedChoice': instance.selectedChoice,
      'disableChoices': instance.disableChoices,
    };
