// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dreams_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DreamsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String journeyId) dreamSaved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String journeyId)? dreamSaved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String journeyId)? dreamSaved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_DreamSaved value) dreamSaved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_DreamSaved value)? dreamSaved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DreamSaved value)? dreamSaved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DreamsEventCopyWith<$Res> {
  factory $DreamsEventCopyWith(
          DreamsEvent value, $Res Function(DreamsEvent) then) =
      _$DreamsEventCopyWithImpl<$Res, DreamsEvent>;
}

/// @nodoc
class _$DreamsEventCopyWithImpl<$Res, $Val extends DreamsEvent>
    implements $DreamsEventCopyWith<$Res> {
  _$DreamsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$DreamsEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'DreamsEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String journeyId) dreamSaved,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String journeyId)? dreamSaved,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String journeyId)? dreamSaved,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_DreamSaved value) dreamSaved,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_DreamSaved value)? dreamSaved,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DreamSaved value)? dreamSaved,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements DreamsEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$DreamSavedImplCopyWith<$Res> {
  factory _$$DreamSavedImplCopyWith(
          _$DreamSavedImpl value, $Res Function(_$DreamSavedImpl) then) =
      __$$DreamSavedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String journeyId});
}

/// @nodoc
class __$$DreamSavedImplCopyWithImpl<$Res>
    extends _$DreamsEventCopyWithImpl<$Res, _$DreamSavedImpl>
    implements _$$DreamSavedImplCopyWith<$Res> {
  __$$DreamSavedImplCopyWithImpl(
      _$DreamSavedImpl _value, $Res Function(_$DreamSavedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? journeyId = null,
  }) {
    return _then(_$DreamSavedImpl(
      null == journeyId
          ? _value.journeyId
          : journeyId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DreamSavedImpl implements _DreamSaved {
  const _$DreamSavedImpl(this.journeyId);

  @override
  final String journeyId;

  @override
  String toString() {
    return 'DreamsEvent.dreamSaved(journeyId: $journeyId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DreamSavedImpl &&
            (identical(other.journeyId, journeyId) ||
                other.journeyId == journeyId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, journeyId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DreamSavedImplCopyWith<_$DreamSavedImpl> get copyWith =>
      __$$DreamSavedImplCopyWithImpl<_$DreamSavedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String journeyId) dreamSaved,
  }) {
    return dreamSaved(journeyId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String journeyId)? dreamSaved,
  }) {
    return dreamSaved?.call(journeyId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String journeyId)? dreamSaved,
    required TResult orElse(),
  }) {
    if (dreamSaved != null) {
      return dreamSaved(journeyId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_DreamSaved value) dreamSaved,
  }) {
    return dreamSaved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_DreamSaved value)? dreamSaved,
  }) {
    return dreamSaved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DreamSaved value)? dreamSaved,
    required TResult orElse(),
  }) {
    if (dreamSaved != null) {
      return dreamSaved(this);
    }
    return orElse();
  }
}

abstract class _DreamSaved implements DreamsEvent {
  const factory _DreamSaved(final String journeyId) = _$DreamSavedImpl;

  String get journeyId;
  @JsonKey(ignore: true)
  _$$DreamSavedImplCopyWith<_$DreamSavedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DreamsState {
  List<Dream> get dreams => throw _privateConstructorUsedError;
  ActionState get dreamsStatus => throw _privateConstructorUsedError;
  ActionState get dreamSaveStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DreamsStateCopyWith<DreamsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DreamsStateCopyWith<$Res> {
  factory $DreamsStateCopyWith(
          DreamsState value, $Res Function(DreamsState) then) =
      _$DreamsStateCopyWithImpl<$Res, DreamsState>;
  @useResult
  $Res call(
      {List<Dream> dreams,
      ActionState dreamsStatus,
      ActionState dreamSaveStatus});

  $ActionStateCopyWith<$Res> get dreamsStatus;
  $ActionStateCopyWith<$Res> get dreamSaveStatus;
}

/// @nodoc
class _$DreamsStateCopyWithImpl<$Res, $Val extends DreamsState>
    implements $DreamsStateCopyWith<$Res> {
  _$DreamsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dreams = null,
    Object? dreamsStatus = null,
    Object? dreamSaveStatus = null,
  }) {
    return _then(_value.copyWith(
      dreams: null == dreams
          ? _value.dreams
          : dreams // ignore: cast_nullable_to_non_nullable
              as List<Dream>,
      dreamsStatus: null == dreamsStatus
          ? _value.dreamsStatus
          : dreamsStatus // ignore: cast_nullable_to_non_nullable
              as ActionState,
      dreamSaveStatus: null == dreamSaveStatus
          ? _value.dreamSaveStatus
          : dreamSaveStatus // ignore: cast_nullable_to_non_nullable
              as ActionState,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ActionStateCopyWith<$Res> get dreamsStatus {
    return $ActionStateCopyWith<$Res>(_value.dreamsStatus, (value) {
      return _then(_value.copyWith(dreamsStatus: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ActionStateCopyWith<$Res> get dreamSaveStatus {
    return $ActionStateCopyWith<$Res>(_value.dreamSaveStatus, (value) {
      return _then(_value.copyWith(dreamSaveStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DreamsStateImplCopyWith<$Res>
    implements $DreamsStateCopyWith<$Res> {
  factory _$$DreamsStateImplCopyWith(
          _$DreamsStateImpl value, $Res Function(_$DreamsStateImpl) then) =
      __$$DreamsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Dream> dreams,
      ActionState dreamsStatus,
      ActionState dreamSaveStatus});

  @override
  $ActionStateCopyWith<$Res> get dreamsStatus;
  @override
  $ActionStateCopyWith<$Res> get dreamSaveStatus;
}

/// @nodoc
class __$$DreamsStateImplCopyWithImpl<$Res>
    extends _$DreamsStateCopyWithImpl<$Res, _$DreamsStateImpl>
    implements _$$DreamsStateImplCopyWith<$Res> {
  __$$DreamsStateImplCopyWithImpl(
      _$DreamsStateImpl _value, $Res Function(_$DreamsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dreams = null,
    Object? dreamsStatus = null,
    Object? dreamSaveStatus = null,
  }) {
    return _then(_$DreamsStateImpl(
      dreams: null == dreams
          ? _value._dreams
          : dreams // ignore: cast_nullable_to_non_nullable
              as List<Dream>,
      dreamsStatus: null == dreamsStatus
          ? _value.dreamsStatus
          : dreamsStatus // ignore: cast_nullable_to_non_nullable
              as ActionState,
      dreamSaveStatus: null == dreamSaveStatus
          ? _value.dreamSaveStatus
          : dreamSaveStatus // ignore: cast_nullable_to_non_nullable
              as ActionState,
    ));
  }
}

/// @nodoc

class _$DreamsStateImpl implements _DreamsState {
  const _$DreamsStateImpl(
      {final List<Dream> dreams = const <Dream>[],
      this.dreamsStatus = const ActionState.idle(),
      this.dreamSaveStatus = const ActionState.idle()})
      : _dreams = dreams;

  final List<Dream> _dreams;
  @override
  @JsonKey()
  List<Dream> get dreams {
    if (_dreams is EqualUnmodifiableListView) return _dreams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dreams);
  }

  @override
  @JsonKey()
  final ActionState dreamsStatus;
  @override
  @JsonKey()
  final ActionState dreamSaveStatus;

  @override
  String toString() {
    return 'DreamsState(dreams: $dreams, dreamsStatus: $dreamsStatus, dreamSaveStatus: $dreamSaveStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DreamsStateImpl &&
            const DeepCollectionEquality().equals(other._dreams, _dreams) &&
            (identical(other.dreamsStatus, dreamsStatus) ||
                other.dreamsStatus == dreamsStatus) &&
            (identical(other.dreamSaveStatus, dreamSaveStatus) ||
                other.dreamSaveStatus == dreamSaveStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_dreams),
      dreamsStatus,
      dreamSaveStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DreamsStateImplCopyWith<_$DreamsStateImpl> get copyWith =>
      __$$DreamsStateImplCopyWithImpl<_$DreamsStateImpl>(this, _$identity);
}

abstract class _DreamsState implements DreamsState {
  const factory _DreamsState(
      {final List<Dream> dreams,
      final ActionState dreamsStatus,
      final ActionState dreamSaveStatus}) = _$DreamsStateImpl;

  @override
  List<Dream> get dreams;
  @override
  ActionState get dreamsStatus;
  @override
  ActionState get dreamSaveStatus;
  @override
  @JsonKey(ignore: true)
  _$$DreamsStateImplCopyWith<_$DreamsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
