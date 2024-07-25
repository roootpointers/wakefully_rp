// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppEvent _$AppEventFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'started':
      return _Started.fromJson(json);
    case 'onboarded':
      return _Onboarded.fromJson(json);
    case 'subscriptionChanged':
      return _SubscriptionChanged.fromJson(json);
    case 'dailyIntentionJournalCompleted':
      return _DailyIntentionJournalCompleted.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'AppEvent',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$AppEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() onboarded,
    required TResult Function(bool subscribed) subscriptionChanged,
    required TResult Function() dailyIntentionJournalCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? onboarded,
    TResult? Function(bool subscribed)? subscriptionChanged,
    TResult? Function()? dailyIntentionJournalCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onboarded,
    TResult Function(bool subscribed)? subscriptionChanged,
    TResult Function()? dailyIntentionJournalCompleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Onboarded value) onboarded,
    required TResult Function(_SubscriptionChanged value) subscriptionChanged,
    required TResult Function(_DailyIntentionJournalCompleted value)
        dailyIntentionJournalCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Onboarded value)? onboarded,
    TResult? Function(_SubscriptionChanged value)? subscriptionChanged,
    TResult? Function(_DailyIntentionJournalCompleted value)?
        dailyIntentionJournalCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Onboarded value)? onboarded,
    TResult Function(_SubscriptionChanged value)? subscriptionChanged,
    TResult Function(_DailyIntentionJournalCompleted value)?
        dailyIntentionJournalCompleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppEventCopyWith<$Res> {
  factory $AppEventCopyWith(AppEvent value, $Res Function(AppEvent) then) =
      _$AppEventCopyWithImpl<$Res, AppEvent>;
}

/// @nodoc
class _$AppEventCopyWithImpl<$Res, $Val extends AppEvent>
    implements $AppEventCopyWith<$Res> {
  _$AppEventCopyWithImpl(this._value, this._then);

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
    extends _$AppEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$StartedImpl implements _Started {
  const _$StartedImpl({final String? $type}) : $type = $type ?? 'started';

  factory _$StartedImpl.fromJson(Map<String, dynamic> json) =>
      _$$StartedImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AppEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() onboarded,
    required TResult Function(bool subscribed) subscriptionChanged,
    required TResult Function() dailyIntentionJournalCompleted,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? onboarded,
    TResult? Function(bool subscribed)? subscriptionChanged,
    TResult? Function()? dailyIntentionJournalCompleted,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onboarded,
    TResult Function(bool subscribed)? subscriptionChanged,
    TResult Function()? dailyIntentionJournalCompleted,
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
    required TResult Function(_Onboarded value) onboarded,
    required TResult Function(_SubscriptionChanged value) subscriptionChanged,
    required TResult Function(_DailyIntentionJournalCompleted value)
        dailyIntentionJournalCompleted,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Onboarded value)? onboarded,
    TResult? Function(_SubscriptionChanged value)? subscriptionChanged,
    TResult? Function(_DailyIntentionJournalCompleted value)?
        dailyIntentionJournalCompleted,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Onboarded value)? onboarded,
    TResult Function(_SubscriptionChanged value)? subscriptionChanged,
    TResult Function(_DailyIntentionJournalCompleted value)?
        dailyIntentionJournalCompleted,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$StartedImplToJson(
      this,
    );
  }
}

abstract class _Started implements AppEvent {
  const factory _Started() = _$StartedImpl;

  factory _Started.fromJson(Map<String, dynamic> json) = _$StartedImpl.fromJson;
}

/// @nodoc
abstract class _$$OnboardedImplCopyWith<$Res> {
  factory _$$OnboardedImplCopyWith(
          _$OnboardedImpl value, $Res Function(_$OnboardedImpl) then) =
      __$$OnboardedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnboardedImplCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$OnboardedImpl>
    implements _$$OnboardedImplCopyWith<$Res> {
  __$$OnboardedImplCopyWithImpl(
      _$OnboardedImpl _value, $Res Function(_$OnboardedImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$OnboardedImpl implements _Onboarded {
  const _$OnboardedImpl({final String? $type}) : $type = $type ?? 'onboarded';

  factory _$OnboardedImpl.fromJson(Map<String, dynamic> json) =>
      _$$OnboardedImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AppEvent.onboarded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnboardedImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() onboarded,
    required TResult Function(bool subscribed) subscriptionChanged,
    required TResult Function() dailyIntentionJournalCompleted,
  }) {
    return onboarded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? onboarded,
    TResult? Function(bool subscribed)? subscriptionChanged,
    TResult? Function()? dailyIntentionJournalCompleted,
  }) {
    return onboarded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onboarded,
    TResult Function(bool subscribed)? subscriptionChanged,
    TResult Function()? dailyIntentionJournalCompleted,
    required TResult orElse(),
  }) {
    if (onboarded != null) {
      return onboarded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Onboarded value) onboarded,
    required TResult Function(_SubscriptionChanged value) subscriptionChanged,
    required TResult Function(_DailyIntentionJournalCompleted value)
        dailyIntentionJournalCompleted,
  }) {
    return onboarded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Onboarded value)? onboarded,
    TResult? Function(_SubscriptionChanged value)? subscriptionChanged,
    TResult? Function(_DailyIntentionJournalCompleted value)?
        dailyIntentionJournalCompleted,
  }) {
    return onboarded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Onboarded value)? onboarded,
    TResult Function(_SubscriptionChanged value)? subscriptionChanged,
    TResult Function(_DailyIntentionJournalCompleted value)?
        dailyIntentionJournalCompleted,
    required TResult orElse(),
  }) {
    if (onboarded != null) {
      return onboarded(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OnboardedImplToJson(
      this,
    );
  }
}

abstract class _Onboarded implements AppEvent {
  const factory _Onboarded() = _$OnboardedImpl;

  factory _Onboarded.fromJson(Map<String, dynamic> json) =
      _$OnboardedImpl.fromJson;
}

/// @nodoc
abstract class _$$SubscriptionChangedImplCopyWith<$Res> {
  factory _$$SubscriptionChangedImplCopyWith(_$SubscriptionChangedImpl value,
          $Res Function(_$SubscriptionChangedImpl) then) =
      __$$SubscriptionChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool subscribed});
}

/// @nodoc
class __$$SubscriptionChangedImplCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$SubscriptionChangedImpl>
    implements _$$SubscriptionChangedImplCopyWith<$Res> {
  __$$SubscriptionChangedImplCopyWithImpl(_$SubscriptionChangedImpl _value,
      $Res Function(_$SubscriptionChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subscribed = null,
  }) {
    return _then(_$SubscriptionChangedImpl(
      null == subscribed
          ? _value.subscribed
          : subscribed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubscriptionChangedImpl implements _SubscriptionChanged {
  _$SubscriptionChangedImpl(this.subscribed, {final String? $type})
      : $type = $type ?? 'subscriptionChanged';

  factory _$SubscriptionChangedImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubscriptionChangedImplFromJson(json);

  @override
  final bool subscribed;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AppEvent.subscriptionChanged(subscribed: $subscribed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionChangedImpl &&
            (identical(other.subscribed, subscribed) ||
                other.subscribed == subscribed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, subscribed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionChangedImplCopyWith<_$SubscriptionChangedImpl> get copyWith =>
      __$$SubscriptionChangedImplCopyWithImpl<_$SubscriptionChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() onboarded,
    required TResult Function(bool subscribed) subscriptionChanged,
    required TResult Function() dailyIntentionJournalCompleted,
  }) {
    return subscriptionChanged(subscribed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? onboarded,
    TResult? Function(bool subscribed)? subscriptionChanged,
    TResult? Function()? dailyIntentionJournalCompleted,
  }) {
    return subscriptionChanged?.call(subscribed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onboarded,
    TResult Function(bool subscribed)? subscriptionChanged,
    TResult Function()? dailyIntentionJournalCompleted,
    required TResult orElse(),
  }) {
    if (subscriptionChanged != null) {
      return subscriptionChanged(subscribed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Onboarded value) onboarded,
    required TResult Function(_SubscriptionChanged value) subscriptionChanged,
    required TResult Function(_DailyIntentionJournalCompleted value)
        dailyIntentionJournalCompleted,
  }) {
    return subscriptionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Onboarded value)? onboarded,
    TResult? Function(_SubscriptionChanged value)? subscriptionChanged,
    TResult? Function(_DailyIntentionJournalCompleted value)?
        dailyIntentionJournalCompleted,
  }) {
    return subscriptionChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Onboarded value)? onboarded,
    TResult Function(_SubscriptionChanged value)? subscriptionChanged,
    TResult Function(_DailyIntentionJournalCompleted value)?
        dailyIntentionJournalCompleted,
    required TResult orElse(),
  }) {
    if (subscriptionChanged != null) {
      return subscriptionChanged(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SubscriptionChangedImplToJson(
      this,
    );
  }
}

abstract class _SubscriptionChanged implements AppEvent {
  factory _SubscriptionChanged(final bool subscribed) =
      _$SubscriptionChangedImpl;

  factory _SubscriptionChanged.fromJson(Map<String, dynamic> json) =
      _$SubscriptionChangedImpl.fromJson;

  bool get subscribed;
  @JsonKey(ignore: true)
  _$$SubscriptionChangedImplCopyWith<_$SubscriptionChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DailyIntentionJournalCompletedImplCopyWith<$Res> {
  factory _$$DailyIntentionJournalCompletedImplCopyWith(
          _$DailyIntentionJournalCompletedImpl value,
          $Res Function(_$DailyIntentionJournalCompletedImpl) then) =
      __$$DailyIntentionJournalCompletedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DailyIntentionJournalCompletedImplCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$DailyIntentionJournalCompletedImpl>
    implements _$$DailyIntentionJournalCompletedImplCopyWith<$Res> {
  __$$DailyIntentionJournalCompletedImplCopyWithImpl(
      _$DailyIntentionJournalCompletedImpl _value,
      $Res Function(_$DailyIntentionJournalCompletedImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$DailyIntentionJournalCompletedImpl
    implements _DailyIntentionJournalCompleted {
  const _$DailyIntentionJournalCompletedImpl({final String? $type})
      : $type = $type ?? 'dailyIntentionJournalCompleted';

  factory _$DailyIntentionJournalCompletedImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$DailyIntentionJournalCompletedImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AppEvent.dailyIntentionJournalCompleted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyIntentionJournalCompletedImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() onboarded,
    required TResult Function(bool subscribed) subscriptionChanged,
    required TResult Function() dailyIntentionJournalCompleted,
  }) {
    return dailyIntentionJournalCompleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? onboarded,
    TResult? Function(bool subscribed)? subscriptionChanged,
    TResult? Function()? dailyIntentionJournalCompleted,
  }) {
    return dailyIntentionJournalCompleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onboarded,
    TResult Function(bool subscribed)? subscriptionChanged,
    TResult Function()? dailyIntentionJournalCompleted,
    required TResult orElse(),
  }) {
    if (dailyIntentionJournalCompleted != null) {
      return dailyIntentionJournalCompleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Onboarded value) onboarded,
    required TResult Function(_SubscriptionChanged value) subscriptionChanged,
    required TResult Function(_DailyIntentionJournalCompleted value)
        dailyIntentionJournalCompleted,
  }) {
    return dailyIntentionJournalCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Onboarded value)? onboarded,
    TResult? Function(_SubscriptionChanged value)? subscriptionChanged,
    TResult? Function(_DailyIntentionJournalCompleted value)?
        dailyIntentionJournalCompleted,
  }) {
    return dailyIntentionJournalCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Onboarded value)? onboarded,
    TResult Function(_SubscriptionChanged value)? subscriptionChanged,
    TResult Function(_DailyIntentionJournalCompleted value)?
        dailyIntentionJournalCompleted,
    required TResult orElse(),
  }) {
    if (dailyIntentionJournalCompleted != null) {
      return dailyIntentionJournalCompleted(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DailyIntentionJournalCompletedImplToJson(
      this,
    );
  }
}

abstract class _DailyIntentionJournalCompleted implements AppEvent {
  const factory _DailyIntentionJournalCompleted() =
      _$DailyIntentionJournalCompletedImpl;

  factory _DailyIntentionJournalCompleted.fromJson(Map<String, dynamic> json) =
      _$DailyIntentionJournalCompletedImpl.fromJson;
}

AppState _$AppStateFromJson(Map<String, dynamic> json) {
  return _AppState.fromJson(json);
}

/// @nodoc
mixin _$AppState {
  String? get upgradeMessage => throw _privateConstructorUsedError;
  bool get upgradeAvailable => throw _privateConstructorUsedError;
  bool get forceUpgrade => throw _privateConstructorUsedError;
  bool get onboarded => throw _privateConstructorUsedError;
  bool get hasCompletedDailyIntentionJournal =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
  @useResult
  $Res call(
      {String? upgradeMessage,
      bool upgradeAvailable,
      bool forceUpgrade,
      bool onboarded,
      bool hasCompletedDailyIntentionJournal});
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? upgradeMessage = freezed,
    Object? upgradeAvailable = null,
    Object? forceUpgrade = null,
    Object? onboarded = null,
    Object? hasCompletedDailyIntentionJournal = null,
  }) {
    return _then(_value.copyWith(
      upgradeMessage: freezed == upgradeMessage
          ? _value.upgradeMessage
          : upgradeMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      upgradeAvailable: null == upgradeAvailable
          ? _value.upgradeAvailable
          : upgradeAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      forceUpgrade: null == forceUpgrade
          ? _value.forceUpgrade
          : forceUpgrade // ignore: cast_nullable_to_non_nullable
              as bool,
      onboarded: null == onboarded
          ? _value.onboarded
          : onboarded // ignore: cast_nullable_to_non_nullable
              as bool,
      hasCompletedDailyIntentionJournal: null ==
              hasCompletedDailyIntentionJournal
          ? _value.hasCompletedDailyIntentionJournal
          : hasCompletedDailyIntentionJournal // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppStateImplCopyWith<$Res>
    implements $AppStateCopyWith<$Res> {
  factory _$$AppStateImplCopyWith(
          _$AppStateImpl value, $Res Function(_$AppStateImpl) then) =
      __$$AppStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? upgradeMessage,
      bool upgradeAvailable,
      bool forceUpgrade,
      bool onboarded,
      bool hasCompletedDailyIntentionJournal});
}

/// @nodoc
class __$$AppStateImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppStateImpl>
    implements _$$AppStateImplCopyWith<$Res> {
  __$$AppStateImplCopyWithImpl(
      _$AppStateImpl _value, $Res Function(_$AppStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? upgradeMessage = freezed,
    Object? upgradeAvailable = null,
    Object? forceUpgrade = null,
    Object? onboarded = null,
    Object? hasCompletedDailyIntentionJournal = null,
  }) {
    return _then(_$AppStateImpl(
      upgradeMessage: freezed == upgradeMessage
          ? _value.upgradeMessage
          : upgradeMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      upgradeAvailable: null == upgradeAvailable
          ? _value.upgradeAvailable
          : upgradeAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      forceUpgrade: null == forceUpgrade
          ? _value.forceUpgrade
          : forceUpgrade // ignore: cast_nullable_to_non_nullable
              as bool,
      onboarded: null == onboarded
          ? _value.onboarded
          : onboarded // ignore: cast_nullable_to_non_nullable
              as bool,
      hasCompletedDailyIntentionJournal: null ==
              hasCompletedDailyIntentionJournal
          ? _value.hasCompletedDailyIntentionJournal
          : hasCompletedDailyIntentionJournal // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppStateImpl implements _AppState {
  _$AppStateImpl(
      {this.upgradeMessage,
      this.upgradeAvailable = false,
      this.forceUpgrade = false,
      this.onboarded = false,
      this.hasCompletedDailyIntentionJournal = false});

  factory _$AppStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppStateImplFromJson(json);

  @override
  final String? upgradeMessage;
  @override
  @JsonKey()
  final bool upgradeAvailable;
  @override
  @JsonKey()
  final bool forceUpgrade;
  @override
  @JsonKey()
  final bool onboarded;
  @override
  @JsonKey()
  final bool hasCompletedDailyIntentionJournal;

  @override
  String toString() {
    return 'AppState(upgradeMessage: $upgradeMessage, upgradeAvailable: $upgradeAvailable, forceUpgrade: $forceUpgrade, onboarded: $onboarded, hasCompletedDailyIntentionJournal: $hasCompletedDailyIntentionJournal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppStateImpl &&
            (identical(other.upgradeMessage, upgradeMessage) ||
                other.upgradeMessage == upgradeMessage) &&
            (identical(other.upgradeAvailable, upgradeAvailable) ||
                other.upgradeAvailable == upgradeAvailable) &&
            (identical(other.forceUpgrade, forceUpgrade) ||
                other.forceUpgrade == forceUpgrade) &&
            (identical(other.onboarded, onboarded) ||
                other.onboarded == onboarded) &&
            (identical(other.hasCompletedDailyIntentionJournal,
                    hasCompletedDailyIntentionJournal) ||
                other.hasCompletedDailyIntentionJournal ==
                    hasCompletedDailyIntentionJournal));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, upgradeMessage, upgradeAvailable,
      forceUpgrade, onboarded, hasCompletedDailyIntentionJournal);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppStateImplCopyWith<_$AppStateImpl> get copyWith =>
      __$$AppStateImplCopyWithImpl<_$AppStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppStateImplToJson(
      this,
    );
  }
}

abstract class _AppState implements AppState {
  factory _AppState(
      {final String? upgradeMessage,
      final bool upgradeAvailable,
      final bool forceUpgrade,
      final bool onboarded,
      final bool hasCompletedDailyIntentionJournal}) = _$AppStateImpl;

  factory _AppState.fromJson(Map<String, dynamic> json) =
      _$AppStateImpl.fromJson;

  @override
  String? get upgradeMessage;
  @override
  bool get upgradeAvailable;
  @override
  bool get forceUpgrade;
  @override
  bool get onboarded;
  @override
  bool get hasCompletedDailyIntentionJournal;
  @override
  @JsonKey(ignore: true)
  _$$AppStateImplCopyWith<_$AppStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
