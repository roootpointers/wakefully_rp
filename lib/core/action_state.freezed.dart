// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'action_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ActionState _$ActionStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'idle':
      return ActionStateIdle.fromJson(json);
    case 'inProgress':
      return ActionStateInProgress.fromJson(json);
    case 'success':
      return ActionStateSuccess.fromJson(json);
    case 'failure':
      return ActionStateFailure.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ActionState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$ActionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() inProgress,
    required TResult Function(String? message) success,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? inProgress,
    TResult? Function(String? message)? success,
    TResult? Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? inProgress,
    TResult Function(String? message)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ActionStateIdle value) idle,
    required TResult Function(ActionStateInProgress value) inProgress,
    required TResult Function(ActionStateSuccess value) success,
    required TResult Function(ActionStateFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ActionStateIdle value)? idle,
    TResult? Function(ActionStateInProgress value)? inProgress,
    TResult? Function(ActionStateSuccess value)? success,
    TResult? Function(ActionStateFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ActionStateIdle value)? idle,
    TResult Function(ActionStateInProgress value)? inProgress,
    TResult Function(ActionStateSuccess value)? success,
    TResult Function(ActionStateFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActionStateCopyWith<$Res> {
  factory $ActionStateCopyWith(
          ActionState value, $Res Function(ActionState) then) =
      _$ActionStateCopyWithImpl<$Res, ActionState>;
}

/// @nodoc
class _$ActionStateCopyWithImpl<$Res, $Val extends ActionState>
    implements $ActionStateCopyWith<$Res> {
  _$ActionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ActionStateIdleImplCopyWith<$Res> {
  factory _$$ActionStateIdleImplCopyWith(_$ActionStateIdleImpl value,
          $Res Function(_$ActionStateIdleImpl) then) =
      __$$ActionStateIdleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ActionStateIdleImplCopyWithImpl<$Res>
    extends _$ActionStateCopyWithImpl<$Res, _$ActionStateIdleImpl>
    implements _$$ActionStateIdleImplCopyWith<$Res> {
  __$$ActionStateIdleImplCopyWithImpl(
      _$ActionStateIdleImpl _value, $Res Function(_$ActionStateIdleImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$ActionStateIdleImpl implements ActionStateIdle {
  const _$ActionStateIdleImpl({final String? $type}) : $type = $type ?? 'idle';

  factory _$ActionStateIdleImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActionStateIdleImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ActionState.idle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ActionStateIdleImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() inProgress,
    required TResult Function(String? message) success,
    required TResult Function(String message) failure,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? inProgress,
    TResult? Function(String? message)? success,
    TResult? Function(String message)? failure,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? inProgress,
    TResult Function(String? message)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ActionStateIdle value) idle,
    required TResult Function(ActionStateInProgress value) inProgress,
    required TResult Function(ActionStateSuccess value) success,
    required TResult Function(ActionStateFailure value) failure,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ActionStateIdle value)? idle,
    TResult? Function(ActionStateInProgress value)? inProgress,
    TResult? Function(ActionStateSuccess value)? success,
    TResult? Function(ActionStateFailure value)? failure,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ActionStateIdle value)? idle,
    TResult Function(ActionStateInProgress value)? inProgress,
    TResult Function(ActionStateSuccess value)? success,
    TResult Function(ActionStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ActionStateIdleImplToJson(
      this,
    );
  }
}

abstract class ActionStateIdle implements ActionState {
  const factory ActionStateIdle() = _$ActionStateIdleImpl;

  factory ActionStateIdle.fromJson(Map<String, dynamic> json) =
      _$ActionStateIdleImpl.fromJson;
}

/// @nodoc
abstract class _$$ActionStateInProgressImplCopyWith<$Res> {
  factory _$$ActionStateInProgressImplCopyWith(
          _$ActionStateInProgressImpl value,
          $Res Function(_$ActionStateInProgressImpl) then) =
      __$$ActionStateInProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ActionStateInProgressImplCopyWithImpl<$Res>
    extends _$ActionStateCopyWithImpl<$Res, _$ActionStateInProgressImpl>
    implements _$$ActionStateInProgressImplCopyWith<$Res> {
  __$$ActionStateInProgressImplCopyWithImpl(_$ActionStateInProgressImpl _value,
      $Res Function(_$ActionStateInProgressImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$ActionStateInProgressImpl implements ActionStateInProgress {
  const _$ActionStateInProgressImpl({final String? $type})
      : $type = $type ?? 'inProgress';

  factory _$ActionStateInProgressImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActionStateInProgressImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ActionState.inProgress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActionStateInProgressImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() inProgress,
    required TResult Function(String? message) success,
    required TResult Function(String message) failure,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? inProgress,
    TResult? Function(String? message)? success,
    TResult? Function(String message)? failure,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? inProgress,
    TResult Function(String? message)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ActionStateIdle value) idle,
    required TResult Function(ActionStateInProgress value) inProgress,
    required TResult Function(ActionStateSuccess value) success,
    required TResult Function(ActionStateFailure value) failure,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ActionStateIdle value)? idle,
    TResult? Function(ActionStateInProgress value)? inProgress,
    TResult? Function(ActionStateSuccess value)? success,
    TResult? Function(ActionStateFailure value)? failure,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ActionStateIdle value)? idle,
    TResult Function(ActionStateInProgress value)? inProgress,
    TResult Function(ActionStateSuccess value)? success,
    TResult Function(ActionStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ActionStateInProgressImplToJson(
      this,
    );
  }
}

abstract class ActionStateInProgress implements ActionState {
  const factory ActionStateInProgress() = _$ActionStateInProgressImpl;

  factory ActionStateInProgress.fromJson(Map<String, dynamic> json) =
      _$ActionStateInProgressImpl.fromJson;
}

/// @nodoc
abstract class _$$ActionStateSuccessImplCopyWith<$Res> {
  factory _$$ActionStateSuccessImplCopyWith(_$ActionStateSuccessImpl value,
          $Res Function(_$ActionStateSuccessImpl) then) =
      __$$ActionStateSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$ActionStateSuccessImplCopyWithImpl<$Res>
    extends _$ActionStateCopyWithImpl<$Res, _$ActionStateSuccessImpl>
    implements _$$ActionStateSuccessImplCopyWith<$Res> {
  __$$ActionStateSuccessImplCopyWithImpl(_$ActionStateSuccessImpl _value,
      $Res Function(_$ActionStateSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ActionStateSuccessImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActionStateSuccessImpl implements ActionStateSuccess {
  const _$ActionStateSuccessImpl({this.message, final String? $type})
      : $type = $type ?? 'success';

  factory _$ActionStateSuccessImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActionStateSuccessImplFromJson(json);

  @override
  final String? message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ActionState.success(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActionStateSuccessImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActionStateSuccessImplCopyWith<_$ActionStateSuccessImpl> get copyWith =>
      __$$ActionStateSuccessImplCopyWithImpl<_$ActionStateSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() inProgress,
    required TResult Function(String? message) success,
    required TResult Function(String message) failure,
  }) {
    return success(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? inProgress,
    TResult? Function(String? message)? success,
    TResult? Function(String message)? failure,
  }) {
    return success?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? inProgress,
    TResult Function(String? message)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ActionStateIdle value) idle,
    required TResult Function(ActionStateInProgress value) inProgress,
    required TResult Function(ActionStateSuccess value) success,
    required TResult Function(ActionStateFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ActionStateIdle value)? idle,
    TResult? Function(ActionStateInProgress value)? inProgress,
    TResult? Function(ActionStateSuccess value)? success,
    TResult? Function(ActionStateFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ActionStateIdle value)? idle,
    TResult Function(ActionStateInProgress value)? inProgress,
    TResult Function(ActionStateSuccess value)? success,
    TResult Function(ActionStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ActionStateSuccessImplToJson(
      this,
    );
  }
}

abstract class ActionStateSuccess implements ActionState {
  const factory ActionStateSuccess({final String? message}) =
      _$ActionStateSuccessImpl;

  factory ActionStateSuccess.fromJson(Map<String, dynamic> json) =
      _$ActionStateSuccessImpl.fromJson;

  String? get message;
  @JsonKey(ignore: true)
  _$$ActionStateSuccessImplCopyWith<_$ActionStateSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ActionStateFailureImplCopyWith<$Res> {
  factory _$$ActionStateFailureImplCopyWith(_$ActionStateFailureImpl value,
          $Res Function(_$ActionStateFailureImpl) then) =
      __$$ActionStateFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ActionStateFailureImplCopyWithImpl<$Res>
    extends _$ActionStateCopyWithImpl<$Res, _$ActionStateFailureImpl>
    implements _$$ActionStateFailureImplCopyWith<$Res> {
  __$$ActionStateFailureImplCopyWithImpl(_$ActionStateFailureImpl _value,
      $Res Function(_$ActionStateFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ActionStateFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActionStateFailureImpl implements ActionStateFailure {
  const _$ActionStateFailureImpl(this.message, {final String? $type})
      : $type = $type ?? 'failure';

  factory _$ActionStateFailureImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActionStateFailureImplFromJson(json);

  @override
  final String message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ActionState.failure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActionStateFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActionStateFailureImplCopyWith<_$ActionStateFailureImpl> get copyWith =>
      __$$ActionStateFailureImplCopyWithImpl<_$ActionStateFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() inProgress,
    required TResult Function(String? message) success,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? inProgress,
    TResult? Function(String? message)? success,
    TResult? Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? inProgress,
    TResult Function(String? message)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ActionStateIdle value) idle,
    required TResult Function(ActionStateInProgress value) inProgress,
    required TResult Function(ActionStateSuccess value) success,
    required TResult Function(ActionStateFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ActionStateIdle value)? idle,
    TResult? Function(ActionStateInProgress value)? inProgress,
    TResult? Function(ActionStateSuccess value)? success,
    TResult? Function(ActionStateFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ActionStateIdle value)? idle,
    TResult Function(ActionStateInProgress value)? inProgress,
    TResult Function(ActionStateSuccess value)? success,
    TResult Function(ActionStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ActionStateFailureImplToJson(
      this,
    );
  }
}

abstract class ActionStateFailure implements ActionState {
  const factory ActionStateFailure(final String message) =
      _$ActionStateFailureImpl;

  factory ActionStateFailure.fromJson(Map<String, dynamic> json) =
      _$ActionStateFailureImpl.fromJson;

  String get message;
  @JsonKey(ignore: true)
  _$$ActionStateFailureImplCopyWith<_$ActionStateFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
