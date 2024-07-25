// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'continue_flow_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ContinueFlowParams _$ContinueFlowParamsFromJson(Map<String, dynamic> json) {
  return _ContinueFlowParams.fromJson(json);
}

/// @nodoc
mixin _$ContinueFlowParams {
  int get flowId => throw _privateConstructorUsedError;
  int get step => throw _privateConstructorUsedError;
  String get journeyId => throw _privateConstructorUsedError;
  Map<String, String> get parameters => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContinueFlowParamsCopyWith<ContinueFlowParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContinueFlowParamsCopyWith<$Res> {
  factory $ContinueFlowParamsCopyWith(
          ContinueFlowParams value, $Res Function(ContinueFlowParams) then) =
      _$ContinueFlowParamsCopyWithImpl<$Res, ContinueFlowParams>;
  @useResult
  $Res call(
      {int flowId, int step, String journeyId, Map<String, String> parameters});
}

/// @nodoc
class _$ContinueFlowParamsCopyWithImpl<$Res, $Val extends ContinueFlowParams>
    implements $ContinueFlowParamsCopyWith<$Res> {
  _$ContinueFlowParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flowId = null,
    Object? step = null,
    Object? journeyId = null,
    Object? parameters = null,
  }) {
    return _then(_value.copyWith(
      flowId: null == flowId
          ? _value.flowId
          : flowId // ignore: cast_nullable_to_non_nullable
              as int,
      step: null == step
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$ContinueFlowParamsImplCopyWith<$Res>
    implements $ContinueFlowParamsCopyWith<$Res> {
  factory _$$ContinueFlowParamsImplCopyWith(_$ContinueFlowParamsImpl value,
          $Res Function(_$ContinueFlowParamsImpl) then) =
      __$$ContinueFlowParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int flowId, int step, String journeyId, Map<String, String> parameters});
}

/// @nodoc
class __$$ContinueFlowParamsImplCopyWithImpl<$Res>
    extends _$ContinueFlowParamsCopyWithImpl<$Res, _$ContinueFlowParamsImpl>
    implements _$$ContinueFlowParamsImplCopyWith<$Res> {
  __$$ContinueFlowParamsImplCopyWithImpl(_$ContinueFlowParamsImpl _value,
      $Res Function(_$ContinueFlowParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flowId = null,
    Object? step = null,
    Object? journeyId = null,
    Object? parameters = null,
  }) {
    return _then(_$ContinueFlowParamsImpl(
      flowId: null == flowId
          ? _value.flowId
          : flowId // ignore: cast_nullable_to_non_nullable
              as int,
      step: null == step
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as int,
      journeyId: null == journeyId
          ? _value.journeyId
          : journeyId // ignore: cast_nullable_to_non_nullable
              as String,
      parameters: null == parameters
          ? _value._parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContinueFlowParamsImpl implements _ContinueFlowParams {
  _$ContinueFlowParamsImpl(
      {required this.flowId,
      required this.step,
      required this.journeyId,
      final Map<String, String> parameters = const {}})
      : _parameters = parameters;

  factory _$ContinueFlowParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContinueFlowParamsImplFromJson(json);

  @override
  final int flowId;
  @override
  final int step;
  @override
  final String journeyId;
  final Map<String, String> _parameters;
  @override
  @JsonKey()
  Map<String, String> get parameters {
    if (_parameters is EqualUnmodifiableMapView) return _parameters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_parameters);
  }

  @override
  String toString() {
    return 'ContinueFlowParams(flowId: $flowId, step: $step, journeyId: $journeyId, parameters: $parameters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContinueFlowParamsImpl &&
            (identical(other.flowId, flowId) || other.flowId == flowId) &&
            (identical(other.step, step) || other.step == step) &&
            (identical(other.journeyId, journeyId) ||
                other.journeyId == journeyId) &&
            const DeepCollectionEquality()
                .equals(other._parameters, _parameters));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, flowId, step, journeyId,
      const DeepCollectionEquality().hash(_parameters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContinueFlowParamsImplCopyWith<_$ContinueFlowParamsImpl> get copyWith =>
      __$$ContinueFlowParamsImplCopyWithImpl<_$ContinueFlowParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContinueFlowParamsImplToJson(
      this,
    );
  }
}

abstract class _ContinueFlowParams implements ContinueFlowParams {
  factory _ContinueFlowParams(
      {required final int flowId,
      required final int step,
      required final String journeyId,
      final Map<String, String> parameters}) = _$ContinueFlowParamsImpl;

  factory _ContinueFlowParams.fromJson(Map<String, dynamic> json) =
      _$ContinueFlowParamsImpl.fromJson;

  @override
  int get flowId;
  @override
  int get step;
  @override
  String get journeyId;
  @override
  Map<String, String> get parameters;
  @override
  @JsonKey(ignore: true)
  _$$ContinueFlowParamsImplCopyWith<_$ContinueFlowParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
