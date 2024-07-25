// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deep_link_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DeepLinkParams {
  int get flowId => throw _privateConstructorUsedError;
  Map<String, String> get parameters => throw _privateConstructorUsedError;
  int get nextFlowBlockId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeepLinkParamsCopyWith<DeepLinkParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeepLinkParamsCopyWith<$Res> {
  factory $DeepLinkParamsCopyWith(
          DeepLinkParams value, $Res Function(DeepLinkParams) then) =
      _$DeepLinkParamsCopyWithImpl<$Res, DeepLinkParams>;
  @useResult
  $Res call({int flowId, Map<String, String> parameters, int nextFlowBlockId});
}

/// @nodoc
class _$DeepLinkParamsCopyWithImpl<$Res, $Val extends DeepLinkParams>
    implements $DeepLinkParamsCopyWith<$Res> {
  _$DeepLinkParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flowId = null,
    Object? parameters = null,
    Object? nextFlowBlockId = null,
  }) {
    return _then(_value.copyWith(
      flowId: null == flowId
          ? _value.flowId
          : flowId // ignore: cast_nullable_to_non_nullable
              as int,
      parameters: null == parameters
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      nextFlowBlockId: null == nextFlowBlockId
          ? _value.nextFlowBlockId
          : nextFlowBlockId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeepLinkParamsImplCopyWith<$Res>
    implements $DeepLinkParamsCopyWith<$Res> {
  factory _$$DeepLinkParamsImplCopyWith(_$DeepLinkParamsImpl value,
          $Res Function(_$DeepLinkParamsImpl) then) =
      __$$DeepLinkParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int flowId, Map<String, String> parameters, int nextFlowBlockId});
}

/// @nodoc
class __$$DeepLinkParamsImplCopyWithImpl<$Res>
    extends _$DeepLinkParamsCopyWithImpl<$Res, _$DeepLinkParamsImpl>
    implements _$$DeepLinkParamsImplCopyWith<$Res> {
  __$$DeepLinkParamsImplCopyWithImpl(
      _$DeepLinkParamsImpl _value, $Res Function(_$DeepLinkParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flowId = null,
    Object? parameters = null,
    Object? nextFlowBlockId = null,
  }) {
    return _then(_$DeepLinkParamsImpl(
      null == flowId
          ? _value.flowId
          : flowId // ignore: cast_nullable_to_non_nullable
              as int,
      null == parameters
          ? _value._parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      null == nextFlowBlockId
          ? _value.nextFlowBlockId
          : nextFlowBlockId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeepLinkParamsImpl implements _DeepLinkParams {
  _$DeepLinkParamsImpl(
      this.flowId, final Map<String, String> parameters, this.nextFlowBlockId)
      : _parameters = parameters;

  @override
  final int flowId;
  final Map<String, String> _parameters;
  @override
  Map<String, String> get parameters {
    if (_parameters is EqualUnmodifiableMapView) return _parameters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_parameters);
  }

  @override
  final int nextFlowBlockId;

  @override
  String toString() {
    return 'DeepLinkParams(flowId: $flowId, parameters: $parameters, nextFlowBlockId: $nextFlowBlockId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeepLinkParamsImpl &&
            (identical(other.flowId, flowId) || other.flowId == flowId) &&
            const DeepCollectionEquality()
                .equals(other._parameters, _parameters) &&
            (identical(other.nextFlowBlockId, nextFlowBlockId) ||
                other.nextFlowBlockId == nextFlowBlockId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, flowId,
      const DeepCollectionEquality().hash(_parameters), nextFlowBlockId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeepLinkParamsImplCopyWith<_$DeepLinkParamsImpl> get copyWith =>
      __$$DeepLinkParamsImplCopyWithImpl<_$DeepLinkParamsImpl>(
          this, _$identity);
}

abstract class _DeepLinkParams implements DeepLinkParams {
  factory _DeepLinkParams(
      final int flowId,
      final Map<String, String> parameters,
      final int nextFlowBlockId) = _$DeepLinkParamsImpl;

  @override
  int get flowId;
  @override
  Map<String, String> get parameters;
  @override
  int get nextFlowBlockId;
  @override
  @JsonKey(ignore: true)
  _$$DeepLinkParamsImplCopyWith<_$DeepLinkParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
