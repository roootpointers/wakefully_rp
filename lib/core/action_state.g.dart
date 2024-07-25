// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'action_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ActionStateIdleImpl _$$ActionStateIdleImplFromJson(
        Map<String, dynamic> json) =>
    _$ActionStateIdleImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ActionStateIdleImplToJson(
        _$ActionStateIdleImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$ActionStateInProgressImpl _$$ActionStateInProgressImplFromJson(
        Map<String, dynamic> json) =>
    _$ActionStateInProgressImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ActionStateInProgressImplToJson(
        _$ActionStateInProgressImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$ActionStateSuccessImpl _$$ActionStateSuccessImplFromJson(
        Map<String, dynamic> json) =>
    _$ActionStateSuccessImpl(
      message: json['message'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ActionStateSuccessImplToJson(
        _$ActionStateSuccessImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'runtimeType': instance.$type,
    };

_$ActionStateFailureImpl _$$ActionStateFailureImplFromJson(
        Map<String, dynamic> json) =>
    _$ActionStateFailureImpl(
      json['message'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ActionStateFailureImplToJson(
        _$ActionStateFailureImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'runtimeType': instance.$type,
    };
