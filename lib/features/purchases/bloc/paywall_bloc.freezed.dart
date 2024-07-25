// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paywall_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PaywallEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(SubscriptionTypes subscriptionType)
        subscriptionPurchased,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(SubscriptionTypes subscriptionType)?
        subscriptionPurchased,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(SubscriptionTypes subscriptionType)? subscriptionPurchased,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SubscriptionPurchased value)
        subscriptionPurchased,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SubscriptionPurchased value)? subscriptionPurchased,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SubscriptionPurchased value)? subscriptionPurchased,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaywallEventCopyWith<$Res> {
  factory $PaywallEventCopyWith(
          PaywallEvent value, $Res Function(PaywallEvent) then) =
      _$PaywallEventCopyWithImpl<$Res, PaywallEvent>;
}

/// @nodoc
class _$PaywallEventCopyWithImpl<$Res, $Val extends PaywallEvent>
    implements $PaywallEventCopyWith<$Res> {
  _$PaywallEventCopyWithImpl(this._value, this._then);

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
    extends _$PaywallEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'PaywallEvent.started()';
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
    required TResult Function(SubscriptionTypes subscriptionType)
        subscriptionPurchased,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(SubscriptionTypes subscriptionType)?
        subscriptionPurchased,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(SubscriptionTypes subscriptionType)? subscriptionPurchased,
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
    required TResult Function(_SubscriptionPurchased value)
        subscriptionPurchased,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SubscriptionPurchased value)? subscriptionPurchased,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SubscriptionPurchased value)? subscriptionPurchased,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements PaywallEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$SubscriptionPurchasedImplCopyWith<$Res> {
  factory _$$SubscriptionPurchasedImplCopyWith(
          _$SubscriptionPurchasedImpl value,
          $Res Function(_$SubscriptionPurchasedImpl) then) =
      __$$SubscriptionPurchasedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SubscriptionTypes subscriptionType});
}

/// @nodoc
class __$$SubscriptionPurchasedImplCopyWithImpl<$Res>
    extends _$PaywallEventCopyWithImpl<$Res, _$SubscriptionPurchasedImpl>
    implements _$$SubscriptionPurchasedImplCopyWith<$Res> {
  __$$SubscriptionPurchasedImplCopyWithImpl(_$SubscriptionPurchasedImpl _value,
      $Res Function(_$SubscriptionPurchasedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subscriptionType = null,
  }) {
    return _then(_$SubscriptionPurchasedImpl(
      null == subscriptionType
          ? _value.subscriptionType
          : subscriptionType // ignore: cast_nullable_to_non_nullable
              as SubscriptionTypes,
    ));
  }
}

/// @nodoc

class _$SubscriptionPurchasedImpl implements _SubscriptionPurchased {
  const _$SubscriptionPurchasedImpl(this.subscriptionType);

  @override
  final SubscriptionTypes subscriptionType;

  @override
  String toString() {
    return 'PaywallEvent.subscriptionPurchased(subscriptionType: $subscriptionType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionPurchasedImpl &&
            (identical(other.subscriptionType, subscriptionType) ||
                other.subscriptionType == subscriptionType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subscriptionType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionPurchasedImplCopyWith<_$SubscriptionPurchasedImpl>
      get copyWith => __$$SubscriptionPurchasedImplCopyWithImpl<
          _$SubscriptionPurchasedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(SubscriptionTypes subscriptionType)
        subscriptionPurchased,
  }) {
    return subscriptionPurchased(subscriptionType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(SubscriptionTypes subscriptionType)?
        subscriptionPurchased,
  }) {
    return subscriptionPurchased?.call(subscriptionType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(SubscriptionTypes subscriptionType)? subscriptionPurchased,
    required TResult orElse(),
  }) {
    if (subscriptionPurchased != null) {
      return subscriptionPurchased(subscriptionType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SubscriptionPurchased value)
        subscriptionPurchased,
  }) {
    return subscriptionPurchased(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SubscriptionPurchased value)? subscriptionPurchased,
  }) {
    return subscriptionPurchased?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SubscriptionPurchased value)? subscriptionPurchased,
    required TResult orElse(),
  }) {
    if (subscriptionPurchased != null) {
      return subscriptionPurchased(this);
    }
    return orElse();
  }
}

abstract class _SubscriptionPurchased implements PaywallEvent {
  const factory _SubscriptionPurchased(
      final SubscriptionTypes subscriptionType) = _$SubscriptionPurchasedImpl;

  SubscriptionTypes get subscriptionType;
  @JsonKey(ignore: true)
  _$$SubscriptionPurchasedImplCopyWith<_$SubscriptionPurchasedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PaywallState {
  ActionState get subscribingState => throw _privateConstructorUsedError;
  PageState get pageStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaywallStateCopyWith<PaywallState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaywallStateCopyWith<$Res> {
  factory $PaywallStateCopyWith(
          PaywallState value, $Res Function(PaywallState) then) =
      _$PaywallStateCopyWithImpl<$Res, PaywallState>;
  @useResult
  $Res call({ActionState subscribingState, PageState pageStatus});

  $ActionStateCopyWith<$Res> get subscribingState;
  $PageStateCopyWith<$Res> get pageStatus;
}

/// @nodoc
class _$PaywallStateCopyWithImpl<$Res, $Val extends PaywallState>
    implements $PaywallStateCopyWith<$Res> {
  _$PaywallStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subscribingState = null,
    Object? pageStatus = null,
  }) {
    return _then(_value.copyWith(
      subscribingState: null == subscribingState
          ? _value.subscribingState
          : subscribingState // ignore: cast_nullable_to_non_nullable
              as ActionState,
      pageStatus: null == pageStatus
          ? _value.pageStatus
          : pageStatus // ignore: cast_nullable_to_non_nullable
              as PageState,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ActionStateCopyWith<$Res> get subscribingState {
    return $ActionStateCopyWith<$Res>(_value.subscribingState, (value) {
      return _then(_value.copyWith(subscribingState: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PageStateCopyWith<$Res> get pageStatus {
    return $PageStateCopyWith<$Res>(_value.pageStatus, (value) {
      return _then(_value.copyWith(pageStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PaywallStateImplCopyWith<$Res>
    implements $PaywallStateCopyWith<$Res> {
  factory _$$PaywallStateImplCopyWith(
          _$PaywallStateImpl value, $Res Function(_$PaywallStateImpl) then) =
      __$$PaywallStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ActionState subscribingState, PageState pageStatus});

  @override
  $ActionStateCopyWith<$Res> get subscribingState;
  @override
  $PageStateCopyWith<$Res> get pageStatus;
}

/// @nodoc
class __$$PaywallStateImplCopyWithImpl<$Res>
    extends _$PaywallStateCopyWithImpl<$Res, _$PaywallStateImpl>
    implements _$$PaywallStateImplCopyWith<$Res> {
  __$$PaywallStateImplCopyWithImpl(
      _$PaywallStateImpl _value, $Res Function(_$PaywallStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subscribingState = null,
    Object? pageStatus = null,
  }) {
    return _then(_$PaywallStateImpl(
      subscribingState: null == subscribingState
          ? _value.subscribingState
          : subscribingState // ignore: cast_nullable_to_non_nullable
              as ActionState,
      pageStatus: null == pageStatus
          ? _value.pageStatus
          : pageStatus // ignore: cast_nullable_to_non_nullable
              as PageState,
    ));
  }
}

/// @nodoc

class _$PaywallStateImpl implements _PaywallState {
  const _$PaywallStateImpl(
      {this.subscribingState = const ActionState.idle(),
      this.pageStatus = const PageState.initial()});

  @override
  @JsonKey()
  final ActionState subscribingState;
  @override
  @JsonKey()
  final PageState pageStatus;

  @override
  String toString() {
    return 'PaywallState(subscribingState: $subscribingState, pageStatus: $pageStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaywallStateImpl &&
            (identical(other.subscribingState, subscribingState) ||
                other.subscribingState == subscribingState) &&
            (identical(other.pageStatus, pageStatus) ||
                other.pageStatus == pageStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subscribingState, pageStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaywallStateImplCopyWith<_$PaywallStateImpl> get copyWith =>
      __$$PaywallStateImplCopyWithImpl<_$PaywallStateImpl>(this, _$identity);
}

abstract class _PaywallState implements PaywallState {
  const factory _PaywallState(
      {final ActionState subscribingState,
      final PageState pageStatus}) = _$PaywallStateImpl;

  @override
  ActionState get subscribingState;
  @override
  PageState get pageStatus;
  @override
  @JsonKey(ignore: true)
  _$$PaywallStateImplCopyWith<_$PaywallStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
