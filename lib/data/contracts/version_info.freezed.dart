// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'version_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VersionInfo _$VersionInfoFromJson(Map<String, dynamic> json) {
  return _VersionInfo.fromJson(json);
}

/// @nodoc
mixin _$VersionInfo {
  String get latestMobileVersion => throw _privateConstructorUsedError;
  String get upgradeMessage => throw _privateConstructorUsedError;
  bool get forceUpgrade => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VersionInfoCopyWith<VersionInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VersionInfoCopyWith<$Res> {
  factory $VersionInfoCopyWith(
          VersionInfo value, $Res Function(VersionInfo) then) =
      _$VersionInfoCopyWithImpl<$Res, VersionInfo>;
  @useResult
  $Res call(
      {String latestMobileVersion, String upgradeMessage, bool forceUpgrade});
}

/// @nodoc
class _$VersionInfoCopyWithImpl<$Res, $Val extends VersionInfo>
    implements $VersionInfoCopyWith<$Res> {
  _$VersionInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latestMobileVersion = null,
    Object? upgradeMessage = null,
    Object? forceUpgrade = null,
  }) {
    return _then(_value.copyWith(
      latestMobileVersion: null == latestMobileVersion
          ? _value.latestMobileVersion
          : latestMobileVersion // ignore: cast_nullable_to_non_nullable
              as String,
      upgradeMessage: null == upgradeMessage
          ? _value.upgradeMessage
          : upgradeMessage // ignore: cast_nullable_to_non_nullable
              as String,
      forceUpgrade: null == forceUpgrade
          ? _value.forceUpgrade
          : forceUpgrade // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VersionInfoImplCopyWith<$Res>
    implements $VersionInfoCopyWith<$Res> {
  factory _$$VersionInfoImplCopyWith(
          _$VersionInfoImpl value, $Res Function(_$VersionInfoImpl) then) =
      __$$VersionInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String latestMobileVersion, String upgradeMessage, bool forceUpgrade});
}

/// @nodoc
class __$$VersionInfoImplCopyWithImpl<$Res>
    extends _$VersionInfoCopyWithImpl<$Res, _$VersionInfoImpl>
    implements _$$VersionInfoImplCopyWith<$Res> {
  __$$VersionInfoImplCopyWithImpl(
      _$VersionInfoImpl _value, $Res Function(_$VersionInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latestMobileVersion = null,
    Object? upgradeMessage = null,
    Object? forceUpgrade = null,
  }) {
    return _then(_$VersionInfoImpl(
      null == latestMobileVersion
          ? _value.latestMobileVersion
          : latestMobileVersion // ignore: cast_nullable_to_non_nullable
              as String,
      null == upgradeMessage
          ? _value.upgradeMessage
          : upgradeMessage // ignore: cast_nullable_to_non_nullable
              as String,
      null == forceUpgrade
          ? _value.forceUpgrade
          : forceUpgrade // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VersionInfoImpl implements _VersionInfo {
  _$VersionInfoImpl(
      this.latestMobileVersion, this.upgradeMessage, this.forceUpgrade);

  factory _$VersionInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$VersionInfoImplFromJson(json);

  @override
  final String latestMobileVersion;
  @override
  final String upgradeMessage;
  @override
  final bool forceUpgrade;

  @override
  String toString() {
    return 'VersionInfo(latestMobileVersion: $latestMobileVersion, upgradeMessage: $upgradeMessage, forceUpgrade: $forceUpgrade)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VersionInfoImpl &&
            (identical(other.latestMobileVersion, latestMobileVersion) ||
                other.latestMobileVersion == latestMobileVersion) &&
            (identical(other.upgradeMessage, upgradeMessage) ||
                other.upgradeMessage == upgradeMessage) &&
            (identical(other.forceUpgrade, forceUpgrade) ||
                other.forceUpgrade == forceUpgrade));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, latestMobileVersion, upgradeMessage, forceUpgrade);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VersionInfoImplCopyWith<_$VersionInfoImpl> get copyWith =>
      __$$VersionInfoImplCopyWithImpl<_$VersionInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VersionInfoImplToJson(
      this,
    );
  }
}

abstract class _VersionInfo implements VersionInfo {
  factory _VersionInfo(final String latestMobileVersion,
      final String upgradeMessage, final bool forceUpgrade) = _$VersionInfoImpl;

  factory _VersionInfo.fromJson(Map<String, dynamic> json) =
      _$VersionInfoImpl.fromJson;

  @override
  String get latestMobileVersion;
  @override
  String get upgradeMessage;
  @override
  bool get forceUpgrade;
  @override
  @JsonKey(ignore: true)
  _$$VersionInfoImplCopyWith<_$VersionInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
