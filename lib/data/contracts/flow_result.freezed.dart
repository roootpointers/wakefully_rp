// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flow_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FlowResult _$FlowResultFromJson(Map<String, dynamic> json) {
  return _FlowResult.fromJson(json);
}

/// @nodoc
mixin _$FlowResult {
  int get flowId => throw _privateConstructorUsedError;
  String get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FlowResultCopyWith<FlowResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlowResultCopyWith<$Res> {
  factory $FlowResultCopyWith(
          FlowResult value, $Res Function(FlowResult) then) =
      _$FlowResultCopyWithImpl<$Res, FlowResult>;
  @useResult
  $Res call({int flowId, String result});
}

/// @nodoc
class _$FlowResultCopyWithImpl<$Res, $Val extends FlowResult>
    implements $FlowResultCopyWith<$Res> {
  _$FlowResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flowId = null,
    Object? result = null,
  }) {
    return _then(_value.copyWith(
      flowId: null == flowId
          ? _value.flowId
          : flowId // ignore: cast_nullable_to_non_nullable
              as int,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FlowResultImplCopyWith<$Res>
    implements $FlowResultCopyWith<$Res> {
  factory _$$FlowResultImplCopyWith(
          _$FlowResultImpl value, $Res Function(_$FlowResultImpl) then) =
      __$$FlowResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int flowId, String result});
}

/// @nodoc
class __$$FlowResultImplCopyWithImpl<$Res>
    extends _$FlowResultCopyWithImpl<$Res, _$FlowResultImpl>
    implements _$$FlowResultImplCopyWith<$Res> {
  __$$FlowResultImplCopyWithImpl(
      _$FlowResultImpl _value, $Res Function(_$FlowResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flowId = null,
    Object? result = null,
  }) {
    return _then(_$FlowResultImpl(
      null == flowId
          ? _value.flowId
          : flowId // ignore: cast_nullable_to_non_nullable
              as int,
      null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FlowResultImpl implements _FlowResult {
  _$FlowResultImpl(this.flowId, this.result);

  factory _$FlowResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$FlowResultImplFromJson(json);

  @override
  final int flowId;
  @override
  final String result;

  @override
  String toString() {
    return 'FlowResult(flowId: $flowId, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlowResultImpl &&
            (identical(other.flowId, flowId) || other.flowId == flowId) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, flowId, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FlowResultImplCopyWith<_$FlowResultImpl> get copyWith =>
      __$$FlowResultImplCopyWithImpl<_$FlowResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FlowResultImplToJson(
      this,
    );
  }
}

abstract class _FlowResult implements FlowResult {
  factory _FlowResult(final int flowId, final String result) = _$FlowResultImpl;

  factory _FlowResult.fromJson(Map<String, dynamic> json) =
      _$FlowResultImpl.fromJson;

  @override
  int get flowId;
  @override
  String get result;
  @override
  @JsonKey(ignore: true)
  _$$FlowResultImplCopyWith<_$FlowResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
