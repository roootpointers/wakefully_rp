// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authenticated_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthenticatedUser _$AuthenticatedUserFromJson(Map<String, dynamic> json) {
  return _AuthenticatedUser.fromJson(json);
}

/// @nodoc
mixin _$AuthenticatedUser {
  String get id => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get displayName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthenticatedUserCopyWith<AuthenticatedUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticatedUserCopyWith<$Res> {
  factory $AuthenticatedUserCopyWith(
          AuthenticatedUser value, $Res Function(AuthenticatedUser) then) =
      _$AuthenticatedUserCopyWithImpl<$Res, AuthenticatedUser>;
  @useResult
  $Res call({String id, String? email, String? displayName});
}

/// @nodoc
class _$AuthenticatedUserCopyWithImpl<$Res, $Val extends AuthenticatedUser>
    implements $AuthenticatedUserCopyWith<$Res> {
  _$AuthenticatedUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = freezed,
    Object? displayName = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthenticatedUserImplCopyWith<$Res>
    implements $AuthenticatedUserCopyWith<$Res> {
  factory _$$AuthenticatedUserImplCopyWith(_$AuthenticatedUserImpl value,
          $Res Function(_$AuthenticatedUserImpl) then) =
      __$$AuthenticatedUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String? email, String? displayName});
}

/// @nodoc
class __$$AuthenticatedUserImplCopyWithImpl<$Res>
    extends _$AuthenticatedUserCopyWithImpl<$Res, _$AuthenticatedUserImpl>
    implements _$$AuthenticatedUserImplCopyWith<$Res> {
  __$$AuthenticatedUserImplCopyWithImpl(_$AuthenticatedUserImpl _value,
      $Res Function(_$AuthenticatedUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = freezed,
    Object? displayName = freezed,
  }) {
    return _then(_$AuthenticatedUserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthenticatedUserImpl extends _AuthenticatedUser {
  _$AuthenticatedUserImpl({required this.id, this.email, this.displayName})
      : super._();

  factory _$AuthenticatedUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthenticatedUserImplFromJson(json);

  @override
  final String id;
  @override
  final String? email;
  @override
  final String? displayName;

  @override
  String toString() {
    return 'AuthenticatedUser(id: $id, email: $email, displayName: $displayName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticatedUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, email, displayName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticatedUserImplCopyWith<_$AuthenticatedUserImpl> get copyWith =>
      __$$AuthenticatedUserImplCopyWithImpl<_$AuthenticatedUserImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthenticatedUserImplToJson(
      this,
    );
  }
}

abstract class _AuthenticatedUser extends AuthenticatedUser {
  factory _AuthenticatedUser(
      {required final String id,
      final String? email,
      final String? displayName}) = _$AuthenticatedUserImpl;
  _AuthenticatedUser._() : super._();

  factory _AuthenticatedUser.fromJson(Map<String, dynamic> json) =
      _$AuthenticatedUserImpl.fromJson;

  @override
  String get id;
  @override
  String? get email;
  @override
  String? get displayName;
  @override
  @JsonKey(ignore: true)
  _$$AuthenticatedUserImplCopyWith<_$AuthenticatedUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
