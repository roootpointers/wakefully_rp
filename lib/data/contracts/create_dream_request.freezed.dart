// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_dream_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateDreamRequest _$CreateDreamRequestFromJson(Map<String, dynamic> json) {
  return _CreateDreamRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateDreamRequest {
  String? get journeyId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateDreamRequestCopyWith<CreateDreamRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateDreamRequestCopyWith<$Res> {
  factory $CreateDreamRequestCopyWith(
          CreateDreamRequest value, $Res Function(CreateDreamRequest) then) =
      _$CreateDreamRequestCopyWithImpl<$Res, CreateDreamRequest>;
  @useResult
  $Res call({String? journeyId});
}

/// @nodoc
class _$CreateDreamRequestCopyWithImpl<$Res, $Val extends CreateDreamRequest>
    implements $CreateDreamRequestCopyWith<$Res> {
  _$CreateDreamRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? journeyId = freezed,
  }) {
    return _then(_value.copyWith(
      journeyId: freezed == journeyId
          ? _value.journeyId
          : journeyId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateDreamRequestImplCopyWith<$Res>
    implements $CreateDreamRequestCopyWith<$Res> {
  factory _$$CreateDreamRequestImplCopyWith(_$CreateDreamRequestImpl value,
          $Res Function(_$CreateDreamRequestImpl) then) =
      __$$CreateDreamRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? journeyId});
}

/// @nodoc
class __$$CreateDreamRequestImplCopyWithImpl<$Res>
    extends _$CreateDreamRequestCopyWithImpl<$Res, _$CreateDreamRequestImpl>
    implements _$$CreateDreamRequestImplCopyWith<$Res> {
  __$$CreateDreamRequestImplCopyWithImpl(_$CreateDreamRequestImpl _value,
      $Res Function(_$CreateDreamRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? journeyId = freezed,
  }) {
    return _then(_$CreateDreamRequestImpl(
      freezed == journeyId
          ? _value.journeyId
          : journeyId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateDreamRequestImpl implements _CreateDreamRequest {
  _$CreateDreamRequestImpl(this.journeyId);

  factory _$CreateDreamRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateDreamRequestImplFromJson(json);

  @override
  final String? journeyId;

  @override
  String toString() {
    return 'CreateDreamRequest(journeyId: $journeyId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateDreamRequestImpl &&
            (identical(other.journeyId, journeyId) ||
                other.journeyId == journeyId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, journeyId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateDreamRequestImplCopyWith<_$CreateDreamRequestImpl> get copyWith =>
      __$$CreateDreamRequestImplCopyWithImpl<_$CreateDreamRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateDreamRequestImplToJson(
      this,
    );
  }
}

abstract class _CreateDreamRequest implements CreateDreamRequest {
  factory _CreateDreamRequest(final String? journeyId) =
      _$CreateDreamRequestImpl;

  factory _CreateDreamRequest.fromJson(Map<String, dynamic> json) =
      _$CreateDreamRequestImpl.fromJson;

  @override
  String? get journeyId;
  @override
  @JsonKey(ignore: true)
  _$$CreateDreamRequestImplCopyWith<_$CreateDreamRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
