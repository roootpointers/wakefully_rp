// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'journeys_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$JourneysEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String scriptFlip, String journeyId)
        scriptFlipUpdated,
    required TResult Function() blobsCleared,
    required TResult Function() refreshed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String scriptFlip, String journeyId)? scriptFlipUpdated,
    TResult? Function()? blobsCleared,
    TResult? Function()? refreshed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String scriptFlip, String journeyId)? scriptFlipUpdated,
    TResult Function()? blobsCleared,
    TResult Function()? refreshed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ScriptFlipUpdated value) scriptFlipUpdated,
    required TResult Function(_BlobsCleared value) blobsCleared,
    required TResult Function(_Refreshed value) refreshed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ScriptFlipUpdated value)? scriptFlipUpdated,
    TResult? Function(_BlobsCleared value)? blobsCleared,
    TResult? Function(_Refreshed value)? refreshed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ScriptFlipUpdated value)? scriptFlipUpdated,
    TResult Function(_BlobsCleared value)? blobsCleared,
    TResult Function(_Refreshed value)? refreshed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JourneysEventCopyWith<$Res> {
  factory $JourneysEventCopyWith(
          JourneysEvent value, $Res Function(JourneysEvent) then) =
      _$JourneysEventCopyWithImpl<$Res, JourneysEvent>;
}

/// @nodoc
class _$JourneysEventCopyWithImpl<$Res, $Val extends JourneysEvent>
    implements $JourneysEventCopyWith<$Res> {
  _$JourneysEventCopyWithImpl(this._value, this._then);

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
    extends _$JourneysEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'JourneysEvent.started()';
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
    required TResult Function(String scriptFlip, String journeyId)
        scriptFlipUpdated,
    required TResult Function() blobsCleared,
    required TResult Function() refreshed,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String scriptFlip, String journeyId)? scriptFlipUpdated,
    TResult? Function()? blobsCleared,
    TResult? Function()? refreshed,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String scriptFlip, String journeyId)? scriptFlipUpdated,
    TResult Function()? blobsCleared,
    TResult Function()? refreshed,
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
    required TResult Function(_ScriptFlipUpdated value) scriptFlipUpdated,
    required TResult Function(_BlobsCleared value) blobsCleared,
    required TResult Function(_Refreshed value) refreshed,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ScriptFlipUpdated value)? scriptFlipUpdated,
    TResult? Function(_BlobsCleared value)? blobsCleared,
    TResult? Function(_Refreshed value)? refreshed,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ScriptFlipUpdated value)? scriptFlipUpdated,
    TResult Function(_BlobsCleared value)? blobsCleared,
    TResult Function(_Refreshed value)? refreshed,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements JourneysEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$ScriptFlipUpdatedImplCopyWith<$Res> {
  factory _$$ScriptFlipUpdatedImplCopyWith(_$ScriptFlipUpdatedImpl value,
          $Res Function(_$ScriptFlipUpdatedImpl) then) =
      __$$ScriptFlipUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String scriptFlip, String journeyId});
}

/// @nodoc
class __$$ScriptFlipUpdatedImplCopyWithImpl<$Res>
    extends _$JourneysEventCopyWithImpl<$Res, _$ScriptFlipUpdatedImpl>
    implements _$$ScriptFlipUpdatedImplCopyWith<$Res> {
  __$$ScriptFlipUpdatedImplCopyWithImpl(_$ScriptFlipUpdatedImpl _value,
      $Res Function(_$ScriptFlipUpdatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scriptFlip = null,
    Object? journeyId = null,
  }) {
    return _then(_$ScriptFlipUpdatedImpl(
      null == scriptFlip
          ? _value.scriptFlip
          : scriptFlip // ignore: cast_nullable_to_non_nullable
              as String,
      null == journeyId
          ? _value.journeyId
          : journeyId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ScriptFlipUpdatedImpl implements _ScriptFlipUpdated {
  const _$ScriptFlipUpdatedImpl(this.scriptFlip, this.journeyId);

  @override
  final String scriptFlip;
  @override
  final String journeyId;

  @override
  String toString() {
    return 'JourneysEvent.scriptFlipUpdated(scriptFlip: $scriptFlip, journeyId: $journeyId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScriptFlipUpdatedImpl &&
            (identical(other.scriptFlip, scriptFlip) ||
                other.scriptFlip == scriptFlip) &&
            (identical(other.journeyId, journeyId) ||
                other.journeyId == journeyId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, scriptFlip, journeyId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScriptFlipUpdatedImplCopyWith<_$ScriptFlipUpdatedImpl> get copyWith =>
      __$$ScriptFlipUpdatedImplCopyWithImpl<_$ScriptFlipUpdatedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String scriptFlip, String journeyId)
        scriptFlipUpdated,
    required TResult Function() blobsCleared,
    required TResult Function() refreshed,
  }) {
    return scriptFlipUpdated(scriptFlip, journeyId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String scriptFlip, String journeyId)? scriptFlipUpdated,
    TResult? Function()? blobsCleared,
    TResult? Function()? refreshed,
  }) {
    return scriptFlipUpdated?.call(scriptFlip, journeyId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String scriptFlip, String journeyId)? scriptFlipUpdated,
    TResult Function()? blobsCleared,
    TResult Function()? refreshed,
    required TResult orElse(),
  }) {
    if (scriptFlipUpdated != null) {
      return scriptFlipUpdated(scriptFlip, journeyId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ScriptFlipUpdated value) scriptFlipUpdated,
    required TResult Function(_BlobsCleared value) blobsCleared,
    required TResult Function(_Refreshed value) refreshed,
  }) {
    return scriptFlipUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ScriptFlipUpdated value)? scriptFlipUpdated,
    TResult? Function(_BlobsCleared value)? blobsCleared,
    TResult? Function(_Refreshed value)? refreshed,
  }) {
    return scriptFlipUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ScriptFlipUpdated value)? scriptFlipUpdated,
    TResult Function(_BlobsCleared value)? blobsCleared,
    TResult Function(_Refreshed value)? refreshed,
    required TResult orElse(),
  }) {
    if (scriptFlipUpdated != null) {
      return scriptFlipUpdated(this);
    }
    return orElse();
  }
}

abstract class _ScriptFlipUpdated implements JourneysEvent {
  const factory _ScriptFlipUpdated(
          final String scriptFlip, final String journeyId) =
      _$ScriptFlipUpdatedImpl;

  String get scriptFlip;
  String get journeyId;
  @JsonKey(ignore: true)
  _$$ScriptFlipUpdatedImplCopyWith<_$ScriptFlipUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BlobsClearedImplCopyWith<$Res> {
  factory _$$BlobsClearedImplCopyWith(
          _$BlobsClearedImpl value, $Res Function(_$BlobsClearedImpl) then) =
      __$$BlobsClearedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BlobsClearedImplCopyWithImpl<$Res>
    extends _$JourneysEventCopyWithImpl<$Res, _$BlobsClearedImpl>
    implements _$$BlobsClearedImplCopyWith<$Res> {
  __$$BlobsClearedImplCopyWithImpl(
      _$BlobsClearedImpl _value, $Res Function(_$BlobsClearedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BlobsClearedImpl implements _BlobsCleared {
  const _$BlobsClearedImpl();

  @override
  String toString() {
    return 'JourneysEvent.blobsCleared()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BlobsClearedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String scriptFlip, String journeyId)
        scriptFlipUpdated,
    required TResult Function() blobsCleared,
    required TResult Function() refreshed,
  }) {
    return blobsCleared();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String scriptFlip, String journeyId)? scriptFlipUpdated,
    TResult? Function()? blobsCleared,
    TResult? Function()? refreshed,
  }) {
    return blobsCleared?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String scriptFlip, String journeyId)? scriptFlipUpdated,
    TResult Function()? blobsCleared,
    TResult Function()? refreshed,
    required TResult orElse(),
  }) {
    if (blobsCleared != null) {
      return blobsCleared();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ScriptFlipUpdated value) scriptFlipUpdated,
    required TResult Function(_BlobsCleared value) blobsCleared,
    required TResult Function(_Refreshed value) refreshed,
  }) {
    return blobsCleared(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ScriptFlipUpdated value)? scriptFlipUpdated,
    TResult? Function(_BlobsCleared value)? blobsCleared,
    TResult? Function(_Refreshed value)? refreshed,
  }) {
    return blobsCleared?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ScriptFlipUpdated value)? scriptFlipUpdated,
    TResult Function(_BlobsCleared value)? blobsCleared,
    TResult Function(_Refreshed value)? refreshed,
    required TResult orElse(),
  }) {
    if (blobsCleared != null) {
      return blobsCleared(this);
    }
    return orElse();
  }
}

abstract class _BlobsCleared implements JourneysEvent {
  const factory _BlobsCleared() = _$BlobsClearedImpl;
}

/// @nodoc
abstract class _$$RefreshedImplCopyWith<$Res> {
  factory _$$RefreshedImplCopyWith(
          _$RefreshedImpl value, $Res Function(_$RefreshedImpl) then) =
      __$$RefreshedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshedImplCopyWithImpl<$Res>
    extends _$JourneysEventCopyWithImpl<$Res, _$RefreshedImpl>
    implements _$$RefreshedImplCopyWith<$Res> {
  __$$RefreshedImplCopyWithImpl(
      _$RefreshedImpl _value, $Res Function(_$RefreshedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RefreshedImpl implements _Refreshed {
  const _$RefreshedImpl();

  @override
  String toString() {
    return 'JourneysEvent.refreshed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreshedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String scriptFlip, String journeyId)
        scriptFlipUpdated,
    required TResult Function() blobsCleared,
    required TResult Function() refreshed,
  }) {
    return refreshed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String scriptFlip, String journeyId)? scriptFlipUpdated,
    TResult? Function()? blobsCleared,
    TResult? Function()? refreshed,
  }) {
    return refreshed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String scriptFlip, String journeyId)? scriptFlipUpdated,
    TResult Function()? blobsCleared,
    TResult Function()? refreshed,
    required TResult orElse(),
  }) {
    if (refreshed != null) {
      return refreshed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ScriptFlipUpdated value) scriptFlipUpdated,
    required TResult Function(_BlobsCleared value) blobsCleared,
    required TResult Function(_Refreshed value) refreshed,
  }) {
    return refreshed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ScriptFlipUpdated value)? scriptFlipUpdated,
    TResult? Function(_BlobsCleared value)? blobsCleared,
    TResult? Function(_Refreshed value)? refreshed,
  }) {
    return refreshed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ScriptFlipUpdated value)? scriptFlipUpdated,
    TResult Function(_BlobsCleared value)? blobsCleared,
    TResult Function(_Refreshed value)? refreshed,
    required TResult orElse(),
  }) {
    if (refreshed != null) {
      return refreshed(this);
    }
    return orElse();
  }
}

abstract class _Refreshed implements JourneysEvent {
  const factory _Refreshed() = _$RefreshedImpl;
}

/// @nodoc
mixin _$JourneysState {
  int get unreadMessagesCount => throw _privateConstructorUsedError;
  List<Blob> get blobs => throw _privateConstructorUsedError;
  String? get scriptFlip => throw _privateConstructorUsedError;
  List<ScriptFlip> get scriptFlips => throw _privateConstructorUsedError;
  PageState get scriptFlipsStatus => throw _privateConstructorUsedError;
  PageState get blobsStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $JourneysStateCopyWith<JourneysState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JourneysStateCopyWith<$Res> {
  factory $JourneysStateCopyWith(
          JourneysState value, $Res Function(JourneysState) then) =
      _$JourneysStateCopyWithImpl<$Res, JourneysState>;
  @useResult
  $Res call(
      {int unreadMessagesCount,
      List<Blob> blobs,
      String? scriptFlip,
      List<ScriptFlip> scriptFlips,
      PageState scriptFlipsStatus,
      PageState blobsStatus});

  $PageStateCopyWith<$Res> get scriptFlipsStatus;
  $PageStateCopyWith<$Res> get blobsStatus;
}

/// @nodoc
class _$JourneysStateCopyWithImpl<$Res, $Val extends JourneysState>
    implements $JourneysStateCopyWith<$Res> {
  _$JourneysStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unreadMessagesCount = null,
    Object? blobs = null,
    Object? scriptFlip = freezed,
    Object? scriptFlips = null,
    Object? scriptFlipsStatus = null,
    Object? blobsStatus = null,
  }) {
    return _then(_value.copyWith(
      unreadMessagesCount: null == unreadMessagesCount
          ? _value.unreadMessagesCount
          : unreadMessagesCount // ignore: cast_nullable_to_non_nullable
              as int,
      blobs: null == blobs
          ? _value.blobs
          : blobs // ignore: cast_nullable_to_non_nullable
              as List<Blob>,
      scriptFlip: freezed == scriptFlip
          ? _value.scriptFlip
          : scriptFlip // ignore: cast_nullable_to_non_nullable
              as String?,
      scriptFlips: null == scriptFlips
          ? _value.scriptFlips
          : scriptFlips // ignore: cast_nullable_to_non_nullable
              as List<ScriptFlip>,
      scriptFlipsStatus: null == scriptFlipsStatus
          ? _value.scriptFlipsStatus
          : scriptFlipsStatus // ignore: cast_nullable_to_non_nullable
              as PageState,
      blobsStatus: null == blobsStatus
          ? _value.blobsStatus
          : blobsStatus // ignore: cast_nullable_to_non_nullable
              as PageState,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PageStateCopyWith<$Res> get scriptFlipsStatus {
    return $PageStateCopyWith<$Res>(_value.scriptFlipsStatus, (value) {
      return _then(_value.copyWith(scriptFlipsStatus: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PageStateCopyWith<$Res> get blobsStatus {
    return $PageStateCopyWith<$Res>(_value.blobsStatus, (value) {
      return _then(_value.copyWith(blobsStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$JourneysStateImplCopyWith<$Res>
    implements $JourneysStateCopyWith<$Res> {
  factory _$$JourneysStateImplCopyWith(
          _$JourneysStateImpl value, $Res Function(_$JourneysStateImpl) then) =
      __$$JourneysStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int unreadMessagesCount,
      List<Blob> blobs,
      String? scriptFlip,
      List<ScriptFlip> scriptFlips,
      PageState scriptFlipsStatus,
      PageState blobsStatus});

  @override
  $PageStateCopyWith<$Res> get scriptFlipsStatus;
  @override
  $PageStateCopyWith<$Res> get blobsStatus;
}

/// @nodoc
class __$$JourneysStateImplCopyWithImpl<$Res>
    extends _$JourneysStateCopyWithImpl<$Res, _$JourneysStateImpl>
    implements _$$JourneysStateImplCopyWith<$Res> {
  __$$JourneysStateImplCopyWithImpl(
      _$JourneysStateImpl _value, $Res Function(_$JourneysStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unreadMessagesCount = null,
    Object? blobs = null,
    Object? scriptFlip = freezed,
    Object? scriptFlips = null,
    Object? scriptFlipsStatus = null,
    Object? blobsStatus = null,
  }) {
    return _then(_$JourneysStateImpl(
      unreadMessagesCount: null == unreadMessagesCount
          ? _value.unreadMessagesCount
          : unreadMessagesCount // ignore: cast_nullable_to_non_nullable
              as int,
      blobs: null == blobs
          ? _value._blobs
          : blobs // ignore: cast_nullable_to_non_nullable
              as List<Blob>,
      scriptFlip: freezed == scriptFlip
          ? _value.scriptFlip
          : scriptFlip // ignore: cast_nullable_to_non_nullable
              as String?,
      scriptFlips: null == scriptFlips
          ? _value._scriptFlips
          : scriptFlips // ignore: cast_nullable_to_non_nullable
              as List<ScriptFlip>,
      scriptFlipsStatus: null == scriptFlipsStatus
          ? _value.scriptFlipsStatus
          : scriptFlipsStatus // ignore: cast_nullable_to_non_nullable
              as PageState,
      blobsStatus: null == blobsStatus
          ? _value.blobsStatus
          : blobsStatus // ignore: cast_nullable_to_non_nullable
              as PageState,
    ));
  }
}

/// @nodoc

class _$JourneysStateImpl implements _JourneysState {
  const _$JourneysStateImpl(
      {this.unreadMessagesCount = 0,
      final List<Blob> blobs = const [],
      this.scriptFlip = null,
      final List<ScriptFlip> scriptFlips = const [],
      this.scriptFlipsStatus = const PageState.initial(),
      this.blobsStatus = const PageState.initial()})
      : _blobs = blobs,
        _scriptFlips = scriptFlips;

  @override
  @JsonKey()
  final int unreadMessagesCount;
  final List<Blob> _blobs;
  @override
  @JsonKey()
  List<Blob> get blobs {
    if (_blobs is EqualUnmodifiableListView) return _blobs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_blobs);
  }

  @override
  @JsonKey()
  final String? scriptFlip;
  final List<ScriptFlip> _scriptFlips;
  @override
  @JsonKey()
  List<ScriptFlip> get scriptFlips {
    if (_scriptFlips is EqualUnmodifiableListView) return _scriptFlips;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_scriptFlips);
  }

  @override
  @JsonKey()
  final PageState scriptFlipsStatus;
  @override
  @JsonKey()
  final PageState blobsStatus;

  @override
  String toString() {
    return 'JourneysState(unreadMessagesCount: $unreadMessagesCount, blobs: $blobs, scriptFlip: $scriptFlip, scriptFlips: $scriptFlips, scriptFlipsStatus: $scriptFlipsStatus, blobsStatus: $blobsStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JourneysStateImpl &&
            (identical(other.unreadMessagesCount, unreadMessagesCount) ||
                other.unreadMessagesCount == unreadMessagesCount) &&
            const DeepCollectionEquality().equals(other._blobs, _blobs) &&
            (identical(other.scriptFlip, scriptFlip) ||
                other.scriptFlip == scriptFlip) &&
            const DeepCollectionEquality()
                .equals(other._scriptFlips, _scriptFlips) &&
            (identical(other.scriptFlipsStatus, scriptFlipsStatus) ||
                other.scriptFlipsStatus == scriptFlipsStatus) &&
            (identical(other.blobsStatus, blobsStatus) ||
                other.blobsStatus == blobsStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      unreadMessagesCount,
      const DeepCollectionEquality().hash(_blobs),
      scriptFlip,
      const DeepCollectionEquality().hash(_scriptFlips),
      scriptFlipsStatus,
      blobsStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JourneysStateImplCopyWith<_$JourneysStateImpl> get copyWith =>
      __$$JourneysStateImplCopyWithImpl<_$JourneysStateImpl>(this, _$identity);
}

abstract class _JourneysState implements JourneysState {
  const factory _JourneysState(
      {final int unreadMessagesCount,
      final List<Blob> blobs,
      final String? scriptFlip,
      final List<ScriptFlip> scriptFlips,
      final PageState scriptFlipsStatus,
      final PageState blobsStatus}) = _$JourneysStateImpl;

  @override
  int get unreadMessagesCount;
  @override
  List<Blob> get blobs;
  @override
  String? get scriptFlip;
  @override
  List<ScriptFlip> get scriptFlips;
  @override
  PageState get scriptFlipsStatus;
  @override
  PageState get blobsStatus;
  @override
  @JsonKey(ignore: true)
  _$$JourneysStateImplCopyWith<_$JourneysStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
