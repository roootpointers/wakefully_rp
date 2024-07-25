// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'version_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VersionInfoImpl _$$VersionInfoImplFromJson(Map<String, dynamic> json) =>
    _$VersionInfoImpl(
      json['latestMobileVersion'] as String,
      json['upgradeMessage'] as String,
      json['forceUpgrade'] as bool,
    );

Map<String, dynamic> _$$VersionInfoImplToJson(_$VersionInfoImpl instance) =>
    <String, dynamic>{
      'latestMobileVersion': instance.latestMobileVersion,
      'upgradeMessage': instance.upgradeMessage,
      'forceUpgrade': instance.forceUpgrade,
    };
