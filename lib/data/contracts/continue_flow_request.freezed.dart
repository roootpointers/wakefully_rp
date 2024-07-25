// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'continue_flow_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ContinueFlowRequest _$ContinueFlowRequestFromJson(Map<String, dynamic> json) {
  return _ContinueFlowRequest.fromJson(json);
}

/// @nodoc
mixin _$ContinueFlowRequest {
  String get journeyId => throw _privateConstructorUsedError;
  Map<String, String> get parameters => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContinueFlowRequestCopyWith<ContinueFlowRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContinueFlowRequestCopyWith<$Res> {
  factory $ContinueFlowRequestCopyWith(
          ContinueFlowRequest value, $Res Function(ContinueFlowRequest) then) =
      _$ContinueFlowRequestCopyWithImpl<$Res, ContinueFlowRequest>;
  @useResult
  $Res call({String journeyId, Map<String, String> parameters});
}

/// @nodoc
class _$ContinueFlowRequestCopyWithImpl<$Res, $Val extends ContinueFlowRequest>
    implements $ContinueFlowRequestCopyWith<$Res> {
  _$ContinueFlowRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? journeyId = null,
    Object? parameters = null,
  }) {
    return _then(_value.copyWith(
      journeyId: null == journeyId
          ? _value.journeyId
          : journeyId // ignore: cast_nullable_to_non_nullable
              as String,
      parameters: null == parameters
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContinueFlowRequestImplCopyWith<$Res>
    implements $ContinueFlowRequestCopyWith<$Res> {
  factory _$$ContinueFlowRequestImplCopyWith(_$ContinueFlowRequestImpl value,
          $Res Function(_$ContinueFlowRequestImpl) then) =
      __$$ContinueFlowRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String journeyId, Map<String, String> parameters});
}

/// @nodoc
class __$$ContinueFlowRequestImplCopyWithImpl<$Res>
    extends _$ContinueFlowRequestCopyWithImpl<$Res, _$ContinueFlowRequestImpl>
    implements _$$ContinueFlowRequestImplCopyWith<$Res> {
  __$$ContinueFlowRequestImplCopyWithImpl(_$ContinueFlowRequestImpl _value,
      $Res Function(_$ContinueFlowRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? journeyId = null,
    Object? parameters = null,
  }) {
    return _then(_$ContinueFlowRequestImpl(
      null == journeyId
          ? _value.journeyId
          : journeyId // ignore: cast_nullable_to_non_nullable
              as String,
      null == parameters
          ? _value._parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContinueFlowRequestImpl implements _ContinueFlowRequest {
  _$ContinueFlowRequestImpl(
      this.journeyId, final Map<String, String> parameters)
      : _parameters = parameters;

  factory _$ContinueFlowRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContinueFlowRequestImplFromJson(json);

  @override
  final String journeyId;
  final Map<String, String> _parameters;
  @override
  Map<String, String> get parameters {
    if (_parameters is EqualUnmodifiableMapView) return _parameters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_parameters);
  }

  @override
  String toString() {
    return 'ContinueFlowRequest(journeyId: $journeyId, parameters: $parameters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContinueFlowRequestImpl &&
            (identical(other.journeyId, journeyId) ||
                other.journeyId == journeyId) &&
            const DeepCollectionEquality()
                .equals(other._parameters, _parameters));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, journeyId, const DeepCollectionEquality().hash(_parameters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContinueFlowRequestImplCopyWith<_$ContinueFlowRequestImpl> get copyWith =>
      __$$ContinueFlowRequestImplCopyWithImpl<_$ContinueFlowRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContinueFlowRequestImplToJson(
      this,
    );
  }
}

abstract class _ContinueFlowRequest implements ContinueFlowRequest {
  factory _ContinueFlowRequest(
          final String journeyId, final Map<String, String> parameters) =
      _$ContinueFlowRequestImpl;

  factory _ContinueFlowRequest.fromJson(Map<String, dynamic> json) =
      _$ContinueFlowRequestImpl.fromJson;

  @override
  String get journeyId;
  @override
  Map<String, String> get parameters;
  @override
  @JsonKey(ignore: true)
  _$$ContinueFlowRequestImplCopyWith<_$ContinueFlowRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
