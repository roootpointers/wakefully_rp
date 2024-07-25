// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'goto_flow_block_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GotoFlowBlockParams {
  int get flowId => throw _privateConstructorUsedError;
  int get flowBlockId => throw _privateConstructorUsedError;
  String? get journeyId => throw _privateConstructorUsedError;
  Map<String, String> get parameters => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GotoFlowBlockParamsCopyWith<GotoFlowBlockParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GotoFlowBlockParamsCopyWith<$Res> {
  factory $GotoFlowBlockParamsCopyWith(
          GotoFlowBlockParams value, $Res Function(GotoFlowBlockParams) then) =
      _$GotoFlowBlockParamsCopyWithImpl<$Res, GotoFlowBlockParams>;
  @useResult
  $Res call(
      {int flowId,
      int flowBlockId,
      String? journeyId,
      Map<String, String> parameters});
}

/// @nodoc
class _$GotoFlowBlockParamsCopyWithImpl<$Res, $Val extends GotoFlowBlockParams>
    implements $GotoFlowBlockParamsCopyWith<$Res> {
  _$GotoFlowBlockParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flowId = null,
    Object? flowBlockId = null,
    Object? journeyId = freezed,
    Object? parameters = null,
  }) {
    return _then(_value.copyWith(
      flowId: null == flowId
          ? _value.flowId
          : flowId // ignore: cast_nullable_to_non_nullable
              as int,
      flowBlockId: null == flowBlockId
          ? _value.flowBlockId
          : flowBlockId // ignore: cast_nullable_to_non_nullable
              as int,
      journeyId: freezed == journeyId
          ? _value.journeyId
          : journeyId // ignore: cast_nullable_to_non_nullable
              as String?,
      parameters: null == parameters
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GotoFlowBlockParamsImplCopyWith<$Res>
    implements $GotoFlowBlockParamsCopyWith<$Res> {
  factory _$$GotoFlowBlockParamsImplCopyWith(_$GotoFlowBlockParamsImpl value,
          $Res Function(_$GotoFlowBlockParamsImpl) then) =
      __$$GotoFlowBlockParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int flowId,
      int flowBlockId,
      String? journeyId,
      Map<String, String> parameters});
}

/// @nodoc
class __$$GotoFlowBlockParamsImplCopyWithImpl<$Res>
    extends _$GotoFlowBlockParamsCopyWithImpl<$Res, _$GotoFlowBlockParamsImpl>
    implements _$$GotoFlowBlockParamsImplCopyWith<$Res> {
  __$$GotoFlowBlockParamsImplCopyWithImpl(_$GotoFlowBlockParamsImpl _value,
      $Res Function(_$GotoFlowBlockParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flowId = null,
    Object? flowBlockId = null,
    Object? journeyId = freezed,
    Object? parameters = null,
  }) {
    return _then(_$GotoFlowBlockParamsImpl(
      flowId: null == flowId
          ? _value.flowId
          : flowId // ignore: cast_nullable_to_non_nullable
              as int,
      flowBlockId: null == flowBlockId
          ? _value.flowBlockId
          : flowBlockId // ignore: cast_nullable_to_non_nullable
              as int,
      journeyId: freezed == journeyId
          ? _value.journeyId
          : journeyId // ignore: cast_nullable_to_non_nullable
              as String?,
      parameters: null == parameters
          ? _value._parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc

class _$GotoFlowBlockParamsImpl implements _GotoFlowBlockParams {
  _$GotoFlowBlockParamsImpl(
      {required this.flowId,
      required this.flowBlockId,
      this.journeyId,
      required final Map<String, String> parameters})
      : _parameters = parameters;

  @override
  final int flowId;
  @override
  final int flowBlockId;
  @override
  final String? journeyId;
  final Map<String, String> _parameters;
  @override
  Map<String, String> get parameters {
    if (_parameters is EqualUnmodifiableMapView) return _parameters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_parameters);
  }

  @override
  String toString() {
    return 'GotoFlowBlockParams(flowId: $flowId, flowBlockId: $flowBlockId, journeyId: $journeyId, parameters: $parameters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GotoFlowBlockParamsImpl &&
            (identical(other.flowId, flowId) || other.flowId == flowId) &&
            (identical(other.flowBlockId, flowBlockId) ||
                other.flowBlockId == flowBlockId) &&
            (identical(other.journeyId, journeyId) ||
                other.journeyId == journeyId) &&
            const DeepCollectionEquality()
                .equals(other._parameters, _parameters));
  }

  @override
  int get hashCode => Object.hash(runtimeType, flowId, flowBlockId, journeyId,
      const DeepCollectionEquality().hash(_parameters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GotoFlowBlockParamsImplCopyWith<_$GotoFlowBlockParamsImpl> get copyWith =>
      __$$GotoFlowBlockParamsImplCopyWithImpl<_$GotoFlowBlockParamsImpl>(
          this, _$identity);
}

abstract class _GotoFlowBlockParams implements GotoFlowBlockParams {
  factory _GotoFlowBlockParams(
          {required final int flowId,
          required final int flowBlockId,
          final String? journeyId,
          required final Map<String, String> parameters}) =
      _$GotoFlowBlockParamsImpl;

  @override
  int get flowId;
  @override
  int get flowBlockId;
  @override
  String? get journeyId;
  @override
  Map<String, String> get parameters;
  @override
  @JsonKey(ignore: true)
  _$$GotoFlowBlockParamsImplCopyWith<_$GotoFlowBlockParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
