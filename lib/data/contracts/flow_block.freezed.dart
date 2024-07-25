// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flow_block.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FlowBlock _$FlowBlockFromJson(Map<String, dynamic> json) {
  return _FlowBlock.fromJson(json);
}

/// @nodoc
mixin _$FlowBlock {
  int get id => throw _privateConstructorUsedError;
  int get flowId => throw _privateConstructorUsedError;
  Message get message => throw _privateConstructorUsedError;
  String get journeyId => throw _privateConstructorUsedError;
  int? get nextStep => throw _privateConstructorUsedError;
  String? get action => throw _privateConstructorUsedError;
  int? get goToFlowBlockId => throw _privateConstructorUsedError;
  bool get showProcessing => throw _privateConstructorUsedError;
  Map<String, String> get parameters => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FlowBlockCopyWith<FlowBlock> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlowBlockCopyWith<$Res> {
  factory $FlowBlockCopyWith(FlowBlock value, $Res Function(FlowBlock) then) =
      _$FlowBlockCopyWithImpl<$Res, FlowBlock>;
  @useResult
  $Res call(
      {int id,
      int flowId,
      Message message,
      String journeyId,
      int? nextStep,
      String? action,
      int? goToFlowBlockId,
      bool showProcessing,
      Map<String, String> parameters});

  $MessageCopyWith<$Res> get message;
}

/// @nodoc
class _$FlowBlockCopyWithImpl<$Res, $Val extends FlowBlock>
    implements $FlowBlockCopyWith<$Res> {
  _$FlowBlockCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? flowId = null,
    Object? message = null,
    Object? journeyId = null,
    Object? nextStep = freezed,
    Object? action = freezed,
    Object? goToFlowBlockId = freezed,
    Object? showProcessing = null,
    Object? parameters = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      flowId: null == flowId
          ? _value.flowId
          : flowId // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
      journeyId: null == journeyId
          ? _value.journeyId
          : journeyId // ignore: cast_nullable_to_non_nullable
              as String,
      nextStep: freezed == nextStep
          ? _value.nextStep
          : nextStep // ignore: cast_nullable_to_non_nullable
              as int?,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
      goToFlowBlockId: freezed == goToFlowBlockId
          ? _value.goToFlowBlockId
          : goToFlowBlockId // ignore: cast_nullable_to_non_nullable
              as int?,
      showProcessing: null == showProcessing
          ? _value.showProcessing
          : showProcessing // ignore: cast_nullable_to_non_nullable
              as bool,
      parameters: null == parameters
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MessageCopyWith<$Res> get message {
    return $MessageCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FlowBlockImplCopyWith<$Res>
    implements $FlowBlockCopyWith<$Res> {
  factory _$$FlowBlockImplCopyWith(
          _$FlowBlockImpl value, $Res Function(_$FlowBlockImpl) then) =
      __$$FlowBlockImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int flowId,
      Message message,
      String journeyId,
      int? nextStep,
      String? action,
      int? goToFlowBlockId,
      bool showProcessing,
      Map<String, String> parameters});

  @override
  $MessageCopyWith<$Res> get message;
}

/// @nodoc
class __$$FlowBlockImplCopyWithImpl<$Res>
    extends _$FlowBlockCopyWithImpl<$Res, _$FlowBlockImpl>
    implements _$$FlowBlockImplCopyWith<$Res> {
  __$$FlowBlockImplCopyWithImpl(
      _$FlowBlockImpl _value, $Res Function(_$FlowBlockImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? flowId = null,
    Object? message = null,
    Object? journeyId = null,
    Object? nextStep = freezed,
    Object? action = freezed,
    Object? goToFlowBlockId = freezed,
    Object? showProcessing = null,
    Object? parameters = null,
  }) {
    return _then(_$FlowBlockImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      flowId: null == flowId
          ? _value.flowId
          : flowId // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
      journeyId: null == journeyId
          ? _value.journeyId
          : journeyId // ignore: cast_nullable_to_non_nullable
              as String,
      nextStep: freezed == nextStep
          ? _value.nextStep
          : nextStep // ignore: cast_nullable_to_non_nullable
              as int?,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
      goToFlowBlockId: freezed == goToFlowBlockId
          ? _value.goToFlowBlockId
          : goToFlowBlockId // ignore: cast_nullable_to_non_nullable
              as int?,
      showProcessing: null == showProcessing
          ? _value.showProcessing
          : showProcessing // ignore: cast_nullable_to_non_nullable
              as bool,
      parameters: null == parameters
          ? _value._parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FlowBlockImpl implements _FlowBlock {
  _$FlowBlockImpl(
      {required this.id,
      required this.flowId,
      required this.message,
      required this.journeyId,
      this.nextStep,
      this.action,
      this.goToFlowBlockId,
      required this.showProcessing,
      final Map<String, String> parameters = const <String, String>{}})
      : _parameters = parameters;

  factory _$FlowBlockImpl.fromJson(Map<String, dynamic> json) =>
      _$$FlowBlockImplFromJson(json);

  @override
  final int id;
  @override
  final int flowId;
  @override
  final Message message;
  @override
  final String journeyId;
  @override
  final int? nextStep;
  @override
  final String? action;
  @override
  final int? goToFlowBlockId;
  @override
  final bool showProcessing;
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
    return 'FlowBlock(id: $id, flowId: $flowId, message: $message, journeyId: $journeyId, nextStep: $nextStep, action: $action, goToFlowBlockId: $goToFlowBlockId, showProcessing: $showProcessing, parameters: $parameters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlowBlockImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.flowId, flowId) || other.flowId == flowId) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.journeyId, journeyId) ||
                other.journeyId == journeyId) &&
            (identical(other.nextStep, nextStep) ||
                other.nextStep == nextStep) &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.goToFlowBlockId, goToFlowBlockId) ||
                other.goToFlowBlockId == goToFlowBlockId) &&
            (identical(other.showProcessing, showProcessing) ||
                other.showProcessing == showProcessing) &&
            const DeepCollectionEquality()
                .equals(other._parameters, _parameters));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      flowId,
      message,
      journeyId,
      nextStep,
      action,
      goToFlowBlockId,
      showProcessing,
      const DeepCollectionEquality().hash(_parameters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FlowBlockImplCopyWith<_$FlowBlockImpl> get copyWith =>
      __$$FlowBlockImplCopyWithImpl<_$FlowBlockImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FlowBlockImplToJson(
      this,
    );
  }
}

abstract class _FlowBlock implements FlowBlock {
  factory _FlowBlock(
      {required final int id,
      required final int flowId,
      required final Message message,
      required final String journeyId,
      final int? nextStep,
      final String? action,
      final int? goToFlowBlockId,
      required final bool showProcessing,
      final Map<String, String> parameters}) = _$FlowBlockImpl;

  factory _FlowBlock.fromJson(Map<String, dynamic> json) =
      _$FlowBlockImpl.fromJson;

  @override
  int get id;
  @override
  int get flowId;
  @override
  Message get message;
  @override
  String get journeyId;
  @override
  int? get nextStep;
  @override
  String? get action;
  @override
  int? get goToFlowBlockId;
  @override
  bool get showProcessing;
  @override
  Map<String, String> get parameters;
  @override
  @JsonKey(ignore: true)
  _$$FlowBlockImplCopyWith<_$FlowBlockImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
