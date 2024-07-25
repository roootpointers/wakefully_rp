// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthenticatedImpl _$$AuthenticatedImplFromJson(Map<String, dynamic> json) =>
    _$AuthenticatedImpl(
      deactivateState: json['deactivateState'] == null
          ? const ActionState.idle()
          : ActionState.fromJson(
              json['deactivateState'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AuthenticatedImplToJson(_$AuthenticatedImpl instance) =>
    <String, dynamic>{
      'deactivateState': instance.deactivateState,
      'runtimeType': instance.$type,
    };

_$UnauthenticatedImpl _$$UnauthenticatedImplFromJson(
        Map<String, dynamic> json) =>
    _$UnauthenticatedImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UnauthenticatedImplToJson(
        _$UnauthenticatedImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$UnknownImpl _$$UnknownImplFromJson(Map<String, dynamic> json) =>
    _$UnknownImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UnknownImplToJson(_$UnknownImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };
