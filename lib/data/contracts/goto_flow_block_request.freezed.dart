// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'goto_flow_block_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GotoFlowBlockRequest _$GotoFlowBlockRequestFromJson(Map<String, dynamic> json) {
  return _GotoFlowBlockRequest.fromJson(json);
}

/// @nodoc
mixin _$GotoFlowBlockRequest {
  String? get journeyId => throw _privateConstructorUsedError;
  int get flowBlockId => throw _privateConstructorUsedError;
  Map<String, String> get parameters => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GotoFlowBlockRequestCopyWith<GotoFlowBlockRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GotoFlowBlockRequestCopyWith<$Res> {
  factory $GotoFlowBlockRequestCopyWith(GotoFlowBlockRequest value,
          $Res Function(GotoFlowBlockRequest) then) =
      _$GotoFlowBlockRequestCopyWithImpl<$Res, GotoFlowBlockRequest>;
  @useResult
  $Res call(
      {String? journeyId, int flowBlockId, Map<String, String> parameters});
}

/// @nodoc
class _$GotoFlowBlockRequestCopyWithImpl<$Res,
        $Val extends GotoFlowBlockRequest>
    implements $GotoFlowBlockRequestCopyWith<$Res> {
  _$GotoFlowBlockRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? journeyId = freezed,
    Object? flowBlockId = null,
    Object? parameters = null,
  }) {
    return _then(_value.copyWith(
      journeyId: freezed == journeyId
          ? _value.journeyId
          : journeyId // ignore: cast_nullable_to_non_nullable
              as String?,
      flowBlockId: null == flowBlockId
          ? _value.flowBlockId
          : flowBlockId // ignore: cast_nullable_to_non_nullable
              as int,
      parameters: null == parameters
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GotoFlowBlockRequestImplCopyWith<$Res>
    implements $GotoFlowBlockRequestCopyWith<$Res> {
  factory _$$GotoFlowBlockRequestImplCopyWith(_$GotoFlowBlockRequestImpl value,
          $Res Function(_$GotoFlowBlockRequestImpl) then) =
      __$$GotoFlowBlockRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? journeyId, int flowBlockId, Map<String, String> parameters});
}

/// @nodoc
class __$$GotoFlowBlockRequestImplCopyWithImpl<$Res>
    extends _$GotoFlowBlockRequestCopyWithImpl<$Res, _$GotoFlowBlockRequestImpl>
    implements _$$GotoFlowBlockRequestImplCopyWith<$Res> {
  __$$GotoFlowBlockRequestImplCopyWithImpl(_$GotoFlowBlockRequestImpl _value,
      $Res Function(_$GotoFlowBlockRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? journeyId = freezed,
    Object? flowBlockId = null,
    Object? parameters = null,
  }) {
    return _then(_$GotoFlowBlockRequestImpl(
      freezed == journeyId
          ? _value.journeyId
          : journeyId // ignore: cast_nullable_to_non_nullable
              as String?,
      null == flowBlockId
          ? _value.flowBlockId
          : flowBlockId // ignore: cast_nullable_to_non_nullable
              as int,
      null == parameters
          ? _value._parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GotoFlowBlockRequestImpl implements _GotoFlowBlockRequest {
  _$GotoFlowBlockRequestImpl(
      this.journeyId, this.flowBlockId, final Map<String, String> parameters)
      : _parameters = parameters;

  factory _$GotoFlowBlockRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$GotoFlowBlockRequestImplFromJson(json);

  @override
  final String? journeyId;
  @override
  final int flowBlockId;
  final Map<String, String> _parameters;
  @override
  Map<String, String> get parameters {
    if (_parameters is EqualUnmodifiableMapView) return _parameters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_parameters);
  }

  @override
  String toString() {
    return 'GotoFlowBlockRequest(journeyId: $journeyId, flowBlockId: $flowBlockId, parameters: $parameters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GotoFlowBlockRequestImpl &&
            (identical(other.journeyId, journeyId) ||
                other.journeyId == journeyId) &&
            (identical(other.flowBlockId, flowBlockId) ||
                other.flowBlockId == flowBlockId) &&
            const DeepCollectionEquality()
                .equals(other._parameters, _parameters));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, journeyId, flowBlockId,
      const DeepCollectionEquality().hash(_parameters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GotoFlowBlockRequestImplCopyWith<_$GotoFlowBlockRequestImpl>
      get copyWith =>
          __$$GotoFlowBlockRequestImplCopyWithImpl<_$GotoFlowBlockRequestImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GotoFlowBlockRequestImplToJson(
      this,
    );
  }
}

abstract class _GotoFlowBlockRequest implements GotoFlowBlockRequest {
  factory _GotoFlowBlockRequest(final String? journeyId, final int flowBlockId,
      final Map<String, String> parameters) = _$GotoFlowBlockRequestImpl;

  factory _GotoFlowBlockRequest.fromJson(Map<String, dynamic> json) =
      _$GotoFlowBlockRequestImpl.fromJson;

  @override
  String? get journeyId;
  @override
  int get flowBlockId;
  @override
  Map<String, String> get parameters;
  @override
  @JsonKey(ignore: true)
  _$$GotoFlowBlockRequestImplCopyWith<_$GotoFlowBlockRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
