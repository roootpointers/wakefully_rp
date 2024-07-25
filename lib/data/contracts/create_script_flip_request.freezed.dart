// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_script_flip_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateScriptFlipRequest _$CreateScriptFlipRequestFromJson(
    Map<String, dynamic> json) {
  return _CreateScriptFlipRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateScriptFlipRequest {
  String get content => throw _privateConstructorUsedError;
  String get journeyId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateScriptFlipRequestCopyWith<CreateScriptFlipRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateScriptFlipRequestCopyWith<$Res> {
  factory $CreateScriptFlipRequestCopyWith(CreateScriptFlipRequest value,
          $Res Function(CreateScriptFlipRequest) then) =
      _$CreateScriptFlipRequestCopyWithImpl<$Res, CreateScriptFlipRequest>;
  @useResult
  $Res call({String content, String journeyId});
}

/// @nodoc
class _$CreateScriptFlipRequestCopyWithImpl<$Res,
        $Val extends CreateScriptFlipRequest>
    implements $CreateScriptFlipRequestCopyWith<$Res> {
  _$CreateScriptFlipRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? journeyId = null,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      journeyId: null == journeyId
          ? _value.journeyId
          : journeyId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateScriptFlipRequestImplCopyWith<$Res>
    implements $CreateScriptFlipRequestCopyWith<$Res> {
  factory _$$CreateScriptFlipRequestImplCopyWith(
          _$CreateScriptFlipRequestImpl value,
          $Res Function(_$CreateScriptFlipRequestImpl) then) =
      __$$CreateScriptFlipRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String content, String journeyId});
}

/// @nodoc
class __$$CreateScriptFlipRequestImplCopyWithImpl<$Res>
    extends _$CreateScriptFlipRequestCopyWithImpl<$Res,
        _$CreateScriptFlipRequestImpl>
    implements _$$CreateScriptFlipRequestImplCopyWith<$Res> {
  __$$CreateScriptFlipRequestImplCopyWithImpl(
      _$CreateScriptFlipRequestImpl _value,
      $Res Function(_$CreateScriptFlipRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? journeyId = null,
  }) {
    return _then(_$CreateScriptFlipRequestImpl(
      null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      null == journeyId
          ? _value.journeyId
          : journeyId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateScriptFlipRequestImpl implements _CreateScriptFlipRequest {
  _$CreateScriptFlipRequestImpl(this.content, this.journeyId);

  factory _$CreateScriptFlipRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateScriptFlipRequestImplFromJson(json);

  @override
  final String content;
  @override
  final String journeyId;

  @override
  String toString() {
    return 'CreateScriptFlipRequest(content: $content, journeyId: $journeyId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateScriptFlipRequestImpl &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.journeyId, journeyId) ||
                other.journeyId == journeyId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, content, journeyId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateScriptFlipRequestImplCopyWith<_$CreateScriptFlipRequestImpl>
      get copyWith => __$$CreateScriptFlipRequestImplCopyWithImpl<
          _$CreateScriptFlipRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateScriptFlipRequestImplToJson(
      this,
    );
  }
}

abstract class _CreateScriptFlipRequest implements CreateScriptFlipRequest {
  factory _CreateScriptFlipRequest(
          final String content, final String journeyId) =
      _$CreateScriptFlipRequestImpl;

  factory _CreateScriptFlipRequest.fromJson(Map<String, dynamic> json) =
      _$CreateScriptFlipRequestImpl.fromJson;

  @override
  String get content;
  @override
  String get journeyId;
  @override
  @JsonKey(ignore: true)
  _$$CreateScriptFlipRequestImplCopyWith<_$CreateScriptFlipRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
