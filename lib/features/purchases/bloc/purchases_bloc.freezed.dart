// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'purchases_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PurchasesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OfferingsInfo? offeringsInfo) started,
    required TResult Function() subscriptionChecked,
    required TResult Function(Subscriptions subscription) subscriptionPurchased,
    required TResult Function() purchasesRestored,
    required TResult Function() resetted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OfferingsInfo? offeringsInfo)? started,
    TResult? Function()? subscriptionChecked,
    TResult? Function(Subscriptions subscription)? subscriptionPurchased,
    TResult? Function()? purchasesRestored,
    TResult? Function()? resetted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OfferingsInfo? offeringsInfo)? started,
    TResult Function()? subscriptionChecked,
    TResult Function(Subscriptions subscription)? subscriptionPurchased,
    TResult Function()? purchasesRestored,
    TResult Function()? resetted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SubscriptionChecked value) subscriptionChecked,
    required TResult Function(_SubscriptionPurchased value)
        subscriptionPurchased,
    required TResult Function(_PurchasesRestored value) purchasesRestored,
    required TResult Function(_Resetted value) resetted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SubscriptionChecked value)? subscriptionChecked,
    TResult? Function(_SubscriptionPurchased value)? subscriptionPurchased,
    TResult? Function(_PurchasesRestored value)? purchasesRestored,
    TResult? Function(_Resetted value)? resetted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SubscriptionChecked value)? subscriptionChecked,
    TResult Function(_SubscriptionPurchased value)? subscriptionPurchased,
    TResult Function(_PurchasesRestored value)? purchasesRestored,
    TResult Function(_Resetted value)? resetted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchasesEventCopyWith<$Res> {
  factory $PurchasesEventCopyWith(
          PurchasesEvent value, $Res Function(PurchasesEvent) then) =
      _$PurchasesEventCopyWithImpl<$Res, PurchasesEvent>;
}

/// @nodoc
class _$PurchasesEventCopyWithImpl<$Res, $Val extends PurchasesEvent>
    implements $PurchasesEventCopyWith<$Res> {
  _$PurchasesEventCopyWithImpl(this._value, this._then);

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
  @useResult
  $Res call({OfferingsInfo? offeringsInfo});

  $OfferingsInfoCopyWith<$Res>? get offeringsInfo;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$PurchasesEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offeringsInfo = freezed,
  }) {
    return _then(_$StartedImpl(
      offeringsInfo: freezed == offeringsInfo
          ? _value.offeringsInfo
          : offeringsInfo // ignore: cast_nullable_to_non_nullable
              as OfferingsInfo?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $OfferingsInfoCopyWith<$Res>? get offeringsInfo {
    if (_value.offeringsInfo == null) {
      return null;
    }

    return $OfferingsInfoCopyWith<$Res>(_value.offeringsInfo!, (value) {
      return _then(_value.copyWith(offeringsInfo: value));
    });
  }
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl({this.offeringsInfo});

  @override
  final OfferingsInfo? offeringsInfo;

  @override
  String toString() {
    return 'PurchasesEvent.started(offeringsInfo: $offeringsInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedImpl &&
            (identical(other.offeringsInfo, offeringsInfo) ||
                other.offeringsInfo == offeringsInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, offeringsInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OfferingsInfo? offeringsInfo) started,
    required TResult Function() subscriptionChecked,
    required TResult Function(Subscriptions subscription) subscriptionPurchased,
    required TResult Function() purchasesRestored,
    required TResult Function() resetted,
  }) {
    return started(offeringsInfo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OfferingsInfo? offeringsInfo)? started,
    TResult? Function()? subscriptionChecked,
    TResult? Function(Subscriptions subscription)? subscriptionPurchased,
    TResult? Function()? purchasesRestored,
    TResult? Function()? resetted,
  }) {
    return started?.call(offeringsInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OfferingsInfo? offeringsInfo)? started,
    TResult Function()? subscriptionChecked,
    TResult Function(Subscriptions subscription)? subscriptionPurchased,
    TResult Function()? purchasesRestored,
    TResult Function()? resetted,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(offeringsInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SubscriptionChecked value) subscriptionChecked,
    required TResult Function(_SubscriptionPurchased value)
        subscriptionPurchased,
    required TResult Function(_PurchasesRestored value) purchasesRestored,
    required TResult Function(_Resetted value) resetted,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SubscriptionChecked value)? subscriptionChecked,
    TResult? Function(_SubscriptionPurchased value)? subscriptionPurchased,
    TResult? Function(_PurchasesRestored value)? purchasesRestored,
    TResult? Function(_Resetted value)? resetted,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SubscriptionChecked value)? subscriptionChecked,
    TResult Function(_SubscriptionPurchased value)? subscriptionPurchased,
    TResult Function(_PurchasesRestored value)? purchasesRestored,
    TResult Function(_Resetted value)? resetted,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements PurchasesEvent {
  const factory _Started({final OfferingsInfo? offeringsInfo}) = _$StartedImpl;

  OfferingsInfo? get offeringsInfo;
  @JsonKey(ignore: true)
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubscriptionCheckedImplCopyWith<$Res> {
  factory _$$SubscriptionCheckedImplCopyWith(_$SubscriptionCheckedImpl value,
          $Res Function(_$SubscriptionCheckedImpl) then) =
      __$$SubscriptionCheckedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubscriptionCheckedImplCopyWithImpl<$Res>
    extends _$PurchasesEventCopyWithImpl<$Res, _$SubscriptionCheckedImpl>
    implements _$$SubscriptionCheckedImplCopyWith<$Res> {
  __$$SubscriptionCheckedImplCopyWithImpl(_$SubscriptionCheckedImpl _value,
      $Res Function(_$SubscriptionCheckedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SubscriptionCheckedImpl implements _SubscriptionChecked {
  const _$SubscriptionCheckedImpl();

  @override
  String toString() {
    return 'PurchasesEvent.subscriptionChecked()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionCheckedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OfferingsInfo? offeringsInfo) started,
    required TResult Function() subscriptionChecked,
    required TResult Function(Subscriptions subscription) subscriptionPurchased,
    required TResult Function() purchasesRestored,
    required TResult Function() resetted,
  }) {
    return subscriptionChecked();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OfferingsInfo? offeringsInfo)? started,
    TResult? Function()? subscriptionChecked,
    TResult? Function(Subscriptions subscription)? subscriptionPurchased,
    TResult? Function()? purchasesRestored,
    TResult? Function()? resetted,
  }) {
    return subscriptionChecked?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OfferingsInfo? offeringsInfo)? started,
    TResult Function()? subscriptionChecked,
    TResult Function(Subscriptions subscription)? subscriptionPurchased,
    TResult Function()? purchasesRestored,
    TResult Function()? resetted,
    required TResult orElse(),
  }) {
    if (subscriptionChecked != null) {
      return subscriptionChecked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SubscriptionChecked value) subscriptionChecked,
    required TResult Function(_SubscriptionPurchased value)
        subscriptionPurchased,
    required TResult Function(_PurchasesRestored value) purchasesRestored,
    required TResult Function(_Resetted value) resetted,
  }) {
    return subscriptionChecked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SubscriptionChecked value)? subscriptionChecked,
    TResult? Function(_SubscriptionPurchased value)? subscriptionPurchased,
    TResult? Function(_PurchasesRestored value)? purchasesRestored,
    TResult? Function(_Resetted value)? resetted,
  }) {
    return subscriptionChecked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SubscriptionChecked value)? subscriptionChecked,
    TResult Function(_SubscriptionPurchased value)? subscriptionPurchased,
    TResult Function(_PurchasesRestored value)? purchasesRestored,
    TResult Function(_Resetted value)? resetted,
    required TResult orElse(),
  }) {
    if (subscriptionChecked != null) {
      return subscriptionChecked(this);
    }
    return orElse();
  }
}

abstract class _SubscriptionChecked implements PurchasesEvent {
  const factory _SubscriptionChecked() = _$SubscriptionCheckedImpl;
}

/// @nodoc
abstract class _$$SubscriptionPurchasedImplCopyWith<$Res> {
  factory _$$SubscriptionPurchasedImplCopyWith(
          _$SubscriptionPurchasedImpl value,
          $Res Function(_$SubscriptionPurchasedImpl) then) =
      __$$SubscriptionPurchasedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Subscriptions subscription});
}

/// @nodoc
class __$$SubscriptionPurchasedImplCopyWithImpl<$Res>
    extends _$PurchasesEventCopyWithImpl<$Res, _$SubscriptionPurchasedImpl>
    implements _$$SubscriptionPurchasedImplCopyWith<$Res> {
  __$$SubscriptionPurchasedImplCopyWithImpl(_$SubscriptionPurchasedImpl _value,
      $Res Function(_$SubscriptionPurchasedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subscription = null,
  }) {
    return _then(_$SubscriptionPurchasedImpl(
      null == subscription
          ? _value.subscription
          : subscription // ignore: cast_nullable_to_non_nullable
              as Subscriptions,
    ));
  }
}

/// @nodoc

class _$SubscriptionPurchasedImpl implements _SubscriptionPurchased {
  const _$SubscriptionPurchasedImpl(this.subscription);

  @override
  final Subscriptions subscription;

  @override
  String toString() {
    return 'PurchasesEvent.subscriptionPurchased(subscription: $subscription)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionPurchasedImpl &&
            (identical(other.subscription, subscription) ||
                other.subscription == subscription));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subscription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionPurchasedImplCopyWith<_$SubscriptionPurchasedImpl>
      get copyWith => __$$SubscriptionPurchasedImplCopyWithImpl<
          _$SubscriptionPurchasedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OfferingsInfo? offeringsInfo) started,
    required TResult Function() subscriptionChecked,
    required TResult Function(Subscriptions subscription) subscriptionPurchased,
    required TResult Function() purchasesRestored,
    required TResult Function() resetted,
  }) {
    return subscriptionPurchased(subscription);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OfferingsInfo? offeringsInfo)? started,
    TResult? Function()? subscriptionChecked,
    TResult? Function(Subscriptions subscription)? subscriptionPurchased,
    TResult? Function()? purchasesRestored,
    TResult? Function()? resetted,
  }) {
    return subscriptionPurchased?.call(subscription);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OfferingsInfo? offeringsInfo)? started,
    TResult Function()? subscriptionChecked,
    TResult Function(Subscriptions subscription)? subscriptionPurchased,
    TResult Function()? purchasesRestored,
    TResult Function()? resetted,
    required TResult orElse(),
  }) {
    if (subscriptionPurchased != null) {
      return subscriptionPurchased(subscription);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SubscriptionChecked value) subscriptionChecked,
    required TResult Function(_SubscriptionPurchased value)
        subscriptionPurchased,
    required TResult Function(_PurchasesRestored value) purchasesRestored,
    required TResult Function(_Resetted value) resetted,
  }) {
    return subscriptionPurchased(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SubscriptionChecked value)? subscriptionChecked,
    TResult? Function(_SubscriptionPurchased value)? subscriptionPurchased,
    TResult? Function(_PurchasesRestored value)? purchasesRestored,
    TResult? Function(_Resetted value)? resetted,
  }) {
    return subscriptionPurchased?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SubscriptionChecked value)? subscriptionChecked,
    TResult Function(_SubscriptionPurchased value)? subscriptionPurchased,
    TResult Function(_PurchasesRestored value)? purchasesRestored,
    TResult Function(_Resetted value)? resetted,
    required TResult orElse(),
  }) {
    if (subscriptionPurchased != null) {
      return subscriptionPurchased(this);
    }
    return orElse();
  }
}

abstract class _SubscriptionPurchased implements PurchasesEvent {
  const factory _SubscriptionPurchased(final Subscriptions subscription) =
      _$SubscriptionPurchasedImpl;

  Subscriptions get subscription;
  @JsonKey(ignore: true)
  _$$SubscriptionPurchasedImplCopyWith<_$SubscriptionPurchasedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PurchasesRestoredImplCopyWith<$Res> {
  factory _$$PurchasesRestoredImplCopyWith(_$PurchasesRestoredImpl value,
          $Res Function(_$PurchasesRestoredImpl) then) =
      __$$PurchasesRestoredImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PurchasesRestoredImplCopyWithImpl<$Res>
    extends _$PurchasesEventCopyWithImpl<$Res, _$PurchasesRestoredImpl>
    implements _$$PurchasesRestoredImplCopyWith<$Res> {
  __$$PurchasesRestoredImplCopyWithImpl(_$PurchasesRestoredImpl _value,
      $Res Function(_$PurchasesRestoredImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PurchasesRestoredImpl implements _PurchasesRestored {
  const _$PurchasesRestoredImpl();

  @override
  String toString() {
    return 'PurchasesEvent.purchasesRestored()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PurchasesRestoredImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OfferingsInfo? offeringsInfo) started,
    required TResult Function() subscriptionChecked,
    required TResult Function(Subscriptions subscription) subscriptionPurchased,
    required TResult Function() purchasesRestored,
    required TResult Function() resetted,
  }) {
    return purchasesRestored();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OfferingsInfo? offeringsInfo)? started,
    TResult? Function()? subscriptionChecked,
    TResult? Function(Subscriptions subscription)? subscriptionPurchased,
    TResult? Function()? purchasesRestored,
    TResult? Function()? resetted,
  }) {
    return purchasesRestored?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OfferingsInfo? offeringsInfo)? started,
    TResult Function()? subscriptionChecked,
    TResult Function(Subscriptions subscription)? subscriptionPurchased,
    TResult Function()? purchasesRestored,
    TResult Function()? resetted,
    required TResult orElse(),
  }) {
    if (purchasesRestored != null) {
      return purchasesRestored();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SubscriptionChecked value) subscriptionChecked,
    required TResult Function(_SubscriptionPurchased value)
        subscriptionPurchased,
    required TResult Function(_PurchasesRestored value) purchasesRestored,
    required TResult Function(_Resetted value) resetted,
  }) {
    return purchasesRestored(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SubscriptionChecked value)? subscriptionChecked,
    TResult? Function(_SubscriptionPurchased value)? subscriptionPurchased,
    TResult? Function(_PurchasesRestored value)? purchasesRestored,
    TResult? Function(_Resetted value)? resetted,
  }) {
    return purchasesRestored?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SubscriptionChecked value)? subscriptionChecked,
    TResult Function(_SubscriptionPurchased value)? subscriptionPurchased,
    TResult Function(_PurchasesRestored value)? purchasesRestored,
    TResult Function(_Resetted value)? resetted,
    required TResult orElse(),
  }) {
    if (purchasesRestored != null) {
      return purchasesRestored(this);
    }
    return orElse();
  }
}

abstract class _PurchasesRestored implements PurchasesEvent {
  const factory _PurchasesRestored() = _$PurchasesRestoredImpl;
}

/// @nodoc
abstract class _$$ResettedImplCopyWith<$Res> {
  factory _$$ResettedImplCopyWith(
          _$ResettedImpl value, $Res Function(_$ResettedImpl) then) =
      __$$ResettedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResettedImplCopyWithImpl<$Res>
    extends _$PurchasesEventCopyWithImpl<$Res, _$ResettedImpl>
    implements _$$ResettedImplCopyWith<$Res> {
  __$$ResettedImplCopyWithImpl(
      _$ResettedImpl _value, $Res Function(_$ResettedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResettedImpl implements _Resetted {
  const _$ResettedImpl();

  @override
  String toString() {
    return 'PurchasesEvent.resetted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResettedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OfferingsInfo? offeringsInfo) started,
    required TResult Function() subscriptionChecked,
    required TResult Function(Subscriptions subscription) subscriptionPurchased,
    required TResult Function() purchasesRestored,
    required TResult Function() resetted,
  }) {
    return resetted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OfferingsInfo? offeringsInfo)? started,
    TResult? Function()? subscriptionChecked,
    TResult? Function(Subscriptions subscription)? subscriptionPurchased,
    TResult? Function()? purchasesRestored,
    TResult? Function()? resetted,
  }) {
    return resetted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OfferingsInfo? offeringsInfo)? started,
    TResult Function()? subscriptionChecked,
    TResult Function(Subscriptions subscription)? subscriptionPurchased,
    TResult Function()? purchasesRestored,
    TResult Function()? resetted,
    required TResult orElse(),
  }) {
    if (resetted != null) {
      return resetted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SubscriptionChecked value) subscriptionChecked,
    required TResult Function(_SubscriptionPurchased value)
        subscriptionPurchased,
    required TResult Function(_PurchasesRestored value) purchasesRestored,
    required TResult Function(_Resetted value) resetted,
  }) {
    return resetted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SubscriptionChecked value)? subscriptionChecked,
    TResult? Function(_SubscriptionPurchased value)? subscriptionPurchased,
    TResult? Function(_PurchasesRestored value)? purchasesRestored,
    TResult? Function(_Resetted value)? resetted,
  }) {
    return resetted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SubscriptionChecked value)? subscriptionChecked,
    TResult Function(_SubscriptionPurchased value)? subscriptionPurchased,
    TResult Function(_PurchasesRestored value)? purchasesRestored,
    TResult Function(_Resetted value)? resetted,
    required TResult orElse(),
  }) {
    if (resetted != null) {
      return resetted(this);
    }
    return orElse();
  }
}

abstract class _Resetted implements PurchasesEvent {
  const factory _Resetted() = _$ResettedImpl;
}

PurchasesState _$PurchasesStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'uninitialized':
      return UninitializedPurchases.fromJson(json);
    case 'initialized':
      return InitializedPurchases.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'PurchasesState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$PurchasesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ActionState initilization) uninitialized,
    required TResult Function(
            bool subscribed,
            bool upgradeAvailable,
            bool isEligibileForTrial,
            OfferingsInfo offeringsInfo,
            DateTime? latestExpirationDate,
            ActionState purchaseState,
            ActionState restorePurchasesState)
        initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ActionState initilization)? uninitialized,
    TResult? Function(
            bool subscribed,
            bool upgradeAvailable,
            bool isEligibileForTrial,
            OfferingsInfo offeringsInfo,
            DateTime? latestExpirationDate,
            ActionState purchaseState,
            ActionState restorePurchasesState)?
        initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ActionState initilization)? uninitialized,
    TResult Function(
            bool subscribed,
            bool upgradeAvailable,
            bool isEligibileForTrial,
            OfferingsInfo offeringsInfo,
            DateTime? latestExpirationDate,
            ActionState purchaseState,
            ActionState restorePurchasesState)?
        initialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UninitializedPurchases value) uninitialized,
    required TResult Function(InitializedPurchases value) initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UninitializedPurchases value)? uninitialized,
    TResult? Function(InitializedPurchases value)? initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UninitializedPurchases value)? uninitialized,
    TResult Function(InitializedPurchases value)? initialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchasesStateCopyWith<$Res> {
  factory $PurchasesStateCopyWith(
          PurchasesState value, $Res Function(PurchasesState) then) =
      _$PurchasesStateCopyWithImpl<$Res, PurchasesState>;
}

/// @nodoc
class _$PurchasesStateCopyWithImpl<$Res, $Val extends PurchasesState>
    implements $PurchasesStateCopyWith<$Res> {
  _$PurchasesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UninitializedPurchasesImplCopyWith<$Res> {
  factory _$$UninitializedPurchasesImplCopyWith(
          _$UninitializedPurchasesImpl value,
          $Res Function(_$UninitializedPurchasesImpl) then) =
      __$$UninitializedPurchasesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ActionState initilization});

  $ActionStateCopyWith<$Res> get initilization;
}

/// @nodoc
class __$$UninitializedPurchasesImplCopyWithImpl<$Res>
    extends _$PurchasesStateCopyWithImpl<$Res, _$UninitializedPurchasesImpl>
    implements _$$UninitializedPurchasesImplCopyWith<$Res> {
  __$$UninitializedPurchasesImplCopyWithImpl(
      _$UninitializedPurchasesImpl _value,
      $Res Function(_$UninitializedPurchasesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initilization = null,
  }) {
    return _then(_$UninitializedPurchasesImpl(
      initilization: null == initilization
          ? _value.initilization
          : initilization // ignore: cast_nullable_to_non_nullable
              as ActionState,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ActionStateCopyWith<$Res> get initilization {
    return $ActionStateCopyWith<$Res>(_value.initilization, (value) {
      return _then(_value.copyWith(initilization: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$UninitializedPurchasesImpl implements UninitializedPurchases {
  const _$UninitializedPurchasesImpl(
      {this.initilization = const ActionState.idle(), final String? $type})
      : $type = $type ?? 'uninitialized';

  factory _$UninitializedPurchasesImpl.fromJson(Map<String, dynamic> json) =>
      _$$UninitializedPurchasesImplFromJson(json);

  @override
  @JsonKey()
  final ActionState initilization;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PurchasesState.uninitialized(initilization: $initilization)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UninitializedPurchasesImpl &&
            (identical(other.initilization, initilization) ||
                other.initilization == initilization));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, initilization);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UninitializedPurchasesImplCopyWith<_$UninitializedPurchasesImpl>
      get copyWith => __$$UninitializedPurchasesImplCopyWithImpl<
          _$UninitializedPurchasesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ActionState initilization) uninitialized,
    required TResult Function(
            bool subscribed,
            bool upgradeAvailable,
            bool isEligibileForTrial,
            OfferingsInfo offeringsInfo,
            DateTime? latestExpirationDate,
            ActionState purchaseState,
            ActionState restorePurchasesState)
        initialized,
  }) {
    return uninitialized(initilization);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ActionState initilization)? uninitialized,
    TResult? Function(
            bool subscribed,
            bool upgradeAvailable,
            bool isEligibileForTrial,
            OfferingsInfo offeringsInfo,
            DateTime? latestExpirationDate,
            ActionState purchaseState,
            ActionState restorePurchasesState)?
        initialized,
  }) {
    return uninitialized?.call(initilization);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ActionState initilization)? uninitialized,
    TResult Function(
            bool subscribed,
            bool upgradeAvailable,
            bool isEligibileForTrial,
            OfferingsInfo offeringsInfo,
            DateTime? latestExpirationDate,
            ActionState purchaseState,
            ActionState restorePurchasesState)?
        initialized,
    required TResult orElse(),
  }) {
    if (uninitialized != null) {
      return uninitialized(initilization);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UninitializedPurchases value) uninitialized,
    required TResult Function(InitializedPurchases value) initialized,
  }) {
    return uninitialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UninitializedPurchases value)? uninitialized,
    TResult? Function(InitializedPurchases value)? initialized,
  }) {
    return uninitialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UninitializedPurchases value)? uninitialized,
    TResult Function(InitializedPurchases value)? initialized,
    required TResult orElse(),
  }) {
    if (uninitialized != null) {
      return uninitialized(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UninitializedPurchasesImplToJson(
      this,
    );
  }
}

abstract class UninitializedPurchases implements PurchasesState {
  const factory UninitializedPurchases({final ActionState initilization}) =
      _$UninitializedPurchasesImpl;

  factory UninitializedPurchases.fromJson(Map<String, dynamic> json) =
      _$UninitializedPurchasesImpl.fromJson;

  ActionState get initilization;
  @JsonKey(ignore: true)
  _$$UninitializedPurchasesImplCopyWith<_$UninitializedPurchasesImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitializedPurchasesImplCopyWith<$Res> {
  factory _$$InitializedPurchasesImplCopyWith(_$InitializedPurchasesImpl value,
          $Res Function(_$InitializedPurchasesImpl) then) =
      __$$InitializedPurchasesImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {bool subscribed,
      bool upgradeAvailable,
      bool isEligibileForTrial,
      OfferingsInfo offeringsInfo,
      DateTime? latestExpirationDate,
      ActionState purchaseState,
      ActionState restorePurchasesState});

  $OfferingsInfoCopyWith<$Res> get offeringsInfo;
  $ActionStateCopyWith<$Res> get purchaseState;
  $ActionStateCopyWith<$Res> get restorePurchasesState;
}

/// @nodoc
class __$$InitializedPurchasesImplCopyWithImpl<$Res>
    extends _$PurchasesStateCopyWithImpl<$Res, _$InitializedPurchasesImpl>
    implements _$$InitializedPurchasesImplCopyWith<$Res> {
  __$$InitializedPurchasesImplCopyWithImpl(_$InitializedPurchasesImpl _value,
      $Res Function(_$InitializedPurchasesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subscribed = null,
    Object? upgradeAvailable = null,
    Object? isEligibileForTrial = null,
    Object? offeringsInfo = null,
    Object? latestExpirationDate = freezed,
    Object? purchaseState = null,
    Object? restorePurchasesState = null,
  }) {
    return _then(_$InitializedPurchasesImpl(
      subscribed: null == subscribed
          ? _value.subscribed
          : subscribed // ignore: cast_nullable_to_non_nullable
              as bool,
      upgradeAvailable: null == upgradeAvailable
          ? _value.upgradeAvailable
          : upgradeAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      isEligibileForTrial: null == isEligibileForTrial
          ? _value.isEligibileForTrial
          : isEligibileForTrial // ignore: cast_nullable_to_non_nullable
              as bool,
      offeringsInfo: null == offeringsInfo
          ? _value.offeringsInfo
          : offeringsInfo // ignore: cast_nullable_to_non_nullable
              as OfferingsInfo,
      latestExpirationDate: freezed == latestExpirationDate
          ? _value.latestExpirationDate
          : latestExpirationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      purchaseState: null == purchaseState
          ? _value.purchaseState
          : purchaseState // ignore: cast_nullable_to_non_nullable
              as ActionState,
      restorePurchasesState: null == restorePurchasesState
          ? _value.restorePurchasesState
          : restorePurchasesState // ignore: cast_nullable_to_non_nullable
              as ActionState,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $OfferingsInfoCopyWith<$Res> get offeringsInfo {
    return $OfferingsInfoCopyWith<$Res>(_value.offeringsInfo, (value) {
      return _then(_value.copyWith(offeringsInfo: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ActionStateCopyWith<$Res> get purchaseState {
    return $ActionStateCopyWith<$Res>(_value.purchaseState, (value) {
      return _then(_value.copyWith(purchaseState: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ActionStateCopyWith<$Res> get restorePurchasesState {
    return $ActionStateCopyWith<$Res>(_value.restorePurchasesState, (value) {
      return _then(_value.copyWith(restorePurchasesState: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$InitializedPurchasesImpl implements InitializedPurchases {
  const _$InitializedPurchasesImpl(
      {this.subscribed = false,
      this.upgradeAvailable = false,
      this.isEligibileForTrial = false,
      required this.offeringsInfo,
      this.latestExpirationDate,
      this.purchaseState = const ActionState.idle(),
      this.restorePurchasesState = const ActionState.idle(),
      final String? $type})
      : $type = $type ?? 'initialized';

  factory _$InitializedPurchasesImpl.fromJson(Map<String, dynamic> json) =>
      _$$InitializedPurchasesImplFromJson(json);

  @override
  @JsonKey()
  final bool subscribed;
  @override
  @JsonKey()
  final bool upgradeAvailable;
  @override
  @JsonKey()
  final bool isEligibileForTrial;
  @override
  final OfferingsInfo offeringsInfo;
  @override
  final DateTime? latestExpirationDate;
  @override
  @JsonKey()
  final ActionState purchaseState;
  @override
  @JsonKey()
  final ActionState restorePurchasesState;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PurchasesState.initialized(subscribed: $subscribed, upgradeAvailable: $upgradeAvailable, isEligibileForTrial: $isEligibileForTrial, offeringsInfo: $offeringsInfo, latestExpirationDate: $latestExpirationDate, purchaseState: $purchaseState, restorePurchasesState: $restorePurchasesState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializedPurchasesImpl &&
            (identical(other.subscribed, subscribed) ||
                other.subscribed == subscribed) &&
            (identical(other.upgradeAvailable, upgradeAvailable) ||
                other.upgradeAvailable == upgradeAvailable) &&
            (identical(other.isEligibileForTrial, isEligibileForTrial) ||
                other.isEligibileForTrial == isEligibileForTrial) &&
            (identical(other.offeringsInfo, offeringsInfo) ||
                other.offeringsInfo == offeringsInfo) &&
            (identical(other.latestExpirationDate, latestExpirationDate) ||
                other.latestExpirationDate == latestExpirationDate) &&
            (identical(other.purchaseState, purchaseState) ||
                other.purchaseState == purchaseState) &&
            (identical(other.restorePurchasesState, restorePurchasesState) ||
                other.restorePurchasesState == restorePurchasesState));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      subscribed,
      upgradeAvailable,
      isEligibileForTrial,
      offeringsInfo,
      latestExpirationDate,
      purchaseState,
      restorePurchasesState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializedPurchasesImplCopyWith<_$InitializedPurchasesImpl>
      get copyWith =>
          __$$InitializedPurchasesImplCopyWithImpl<_$InitializedPurchasesImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ActionState initilization) uninitialized,
    required TResult Function(
            bool subscribed,
            bool upgradeAvailable,
            bool isEligibileForTrial,
            OfferingsInfo offeringsInfo,
            DateTime? latestExpirationDate,
            ActionState purchaseState,
            ActionState restorePurchasesState)
        initialized,
  }) {
    return initialized(
        subscribed,
        upgradeAvailable,
        isEligibileForTrial,
        offeringsInfo,
        latestExpirationDate,
        purchaseState,
        restorePurchasesState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ActionState initilization)? uninitialized,
    TResult? Function(
            bool subscribed,
            bool upgradeAvailable,
            bool isEligibileForTrial,
            OfferingsInfo offeringsInfo,
            DateTime? latestExpirationDate,
            ActionState purchaseState,
            ActionState restorePurchasesState)?
        initialized,
  }) {
    return initialized?.call(
        subscribed,
        upgradeAvailable,
        isEligibileForTrial,
        offeringsInfo,
        latestExpirationDate,
        purchaseState,
        restorePurchasesState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ActionState initilization)? uninitialized,
    TResult Function(
            bool subscribed,
            bool upgradeAvailable,
            bool isEligibileForTrial,
            OfferingsInfo offeringsInfo,
            DateTime? latestExpirationDate,
            ActionState purchaseState,
            ActionState restorePurchasesState)?
        initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(
          subscribed,
          upgradeAvailable,
          isEligibileForTrial,
          offeringsInfo,
          latestExpirationDate,
          purchaseState,
          restorePurchasesState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UninitializedPurchases value) uninitialized,
    required TResult Function(InitializedPurchases value) initialized,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UninitializedPurchases value)? uninitialized,
    TResult? Function(InitializedPurchases value)? initialized,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UninitializedPurchases value)? uninitialized,
    TResult Function(InitializedPurchases value)? initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$InitializedPurchasesImplToJson(
      this,
    );
  }
}

abstract class InitializedPurchases implements PurchasesState {
  const factory InitializedPurchases(
      {final bool subscribed,
      final bool upgradeAvailable,
      final bool isEligibileForTrial,
      required final OfferingsInfo offeringsInfo,
      final DateTime? latestExpirationDate,
      final ActionState purchaseState,
      final ActionState restorePurchasesState}) = _$InitializedPurchasesImpl;

  factory InitializedPurchases.fromJson(Map<String, dynamic> json) =
      _$InitializedPurchasesImpl.fromJson;

  bool get subscribed;
  bool get upgradeAvailable;
  bool get isEligibileForTrial;
  OfferingsInfo get offeringsInfo;
  DateTime? get latestExpirationDate;
  ActionState get purchaseState;
  ActionState get restorePurchasesState;
  @JsonKey(ignore: true)
  _$$InitializedPurchasesImplCopyWith<_$InitializedPurchasesImpl>
      get copyWith => throw _privateConstructorUsedError;
}
