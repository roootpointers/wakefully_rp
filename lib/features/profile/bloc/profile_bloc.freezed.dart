// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String name, String email)
        accountInformationUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name, String email)? accountInformationUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name, String email)? accountInformationUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AccountInformationUpdated value)
        accountInformationUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AccountInformationUpdated value)?
        accountInformationUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AccountInformationUpdated value)?
        accountInformationUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res, ProfileEvent>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res, $Val extends ProfileEvent>
    implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

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
    extends _$ProfileEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'ProfileEvent.started()';
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
    required TResult Function(String name, String email)
        accountInformationUpdated,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name, String email)? accountInformationUpdated,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name, String email)? accountInformationUpdated,
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
    required TResult Function(_AccountInformationUpdated value)
        accountInformationUpdated,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AccountInformationUpdated value)?
        accountInformationUpdated,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AccountInformationUpdated value)?
        accountInformationUpdated,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ProfileEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$AccountInformationUpdatedImplCopyWith<$Res> {
  factory _$$AccountInformationUpdatedImplCopyWith(
          _$AccountInformationUpdatedImpl value,
          $Res Function(_$AccountInformationUpdatedImpl) then) =
      __$$AccountInformationUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name, String email});
}

/// @nodoc
class __$$AccountInformationUpdatedImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$AccountInformationUpdatedImpl>
    implements _$$AccountInformationUpdatedImplCopyWith<$Res> {
  __$$AccountInformationUpdatedImplCopyWithImpl(
      _$AccountInformationUpdatedImpl _value,
      $Res Function(_$AccountInformationUpdatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
  }) {
    return _then(_$AccountInformationUpdatedImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AccountInformationUpdatedImpl implements _AccountInformationUpdated {
  const _$AccountInformationUpdatedImpl(
      {required this.name, required this.email});

  @override
  final String name;
  @override
  final String email;

  @override
  String toString() {
    return 'ProfileEvent.accountInformationUpdated(name: $name, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountInformationUpdatedImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountInformationUpdatedImplCopyWith<_$AccountInformationUpdatedImpl>
      get copyWith => __$$AccountInformationUpdatedImplCopyWithImpl<
          _$AccountInformationUpdatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String name, String email)
        accountInformationUpdated,
  }) {
    return accountInformationUpdated(name, email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name, String email)? accountInformationUpdated,
  }) {
    return accountInformationUpdated?.call(name, email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name, String email)? accountInformationUpdated,
    required TResult orElse(),
  }) {
    if (accountInformationUpdated != null) {
      return accountInformationUpdated(name, email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AccountInformationUpdated value)
        accountInformationUpdated,
  }) {
    return accountInformationUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AccountInformationUpdated value)?
        accountInformationUpdated,
  }) {
    return accountInformationUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AccountInformationUpdated value)?
        accountInformationUpdated,
    required TResult orElse(),
  }) {
    if (accountInformationUpdated != null) {
      return accountInformationUpdated(this);
    }
    return orElse();
  }
}

abstract class _AccountInformationUpdated implements ProfileEvent {
  const factory _AccountInformationUpdated(
      {required final String name,
      required final String email}) = _$AccountInformationUpdatedImpl;

  String get name;
  String get email;
  @JsonKey(ignore: true)
  _$$AccountInformationUpdatedImplCopyWith<_$AccountInformationUpdatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProfileState {
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  ActionState get accountInformationUpdateStatus =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
  @useResult
  $Res call(
      {String? name,
      String? email,
      ActionState accountInformationUpdateStatus});

  $ActionStateCopyWith<$Res> get accountInformationUpdateStatus;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? accountInformationUpdateStatus = null,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      accountInformationUpdateStatus: null == accountInformationUpdateStatus
          ? _value.accountInformationUpdateStatus
          : accountInformationUpdateStatus // ignore: cast_nullable_to_non_nullable
              as ActionState,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ActionStateCopyWith<$Res> get accountInformationUpdateStatus {
    return $ActionStateCopyWith<$Res>(_value.accountInformationUpdateStatus,
        (value) {
      return _then(
          _value.copyWith(accountInformationUpdateStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileStateImplCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$ProfileStateImplCopyWith(
          _$ProfileStateImpl value, $Res Function(_$ProfileStateImpl) then) =
      __$$ProfileStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? email,
      ActionState accountInformationUpdateStatus});

  @override
  $ActionStateCopyWith<$Res> get accountInformationUpdateStatus;
}

/// @nodoc
class __$$ProfileStateImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileStateImpl>
    implements _$$ProfileStateImplCopyWith<$Res> {
  __$$ProfileStateImplCopyWithImpl(
      _$ProfileStateImpl _value, $Res Function(_$ProfileStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? accountInformationUpdateStatus = null,
  }) {
    return _then(_$ProfileStateImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      accountInformationUpdateStatus: null == accountInformationUpdateStatus
          ? _value.accountInformationUpdateStatus
          : accountInformationUpdateStatus // ignore: cast_nullable_to_non_nullable
              as ActionState,
    ));
  }
}

/// @nodoc

class _$ProfileStateImpl implements _ProfileState {
  const _$ProfileStateImpl(
      {this.name,
      this.email,
      this.accountInformationUpdateStatus = const ActionState.idle()});

  @override
  final String? name;
  @override
  final String? email;
  @override
  @JsonKey()
  final ActionState accountInformationUpdateStatus;

  @override
  String toString() {
    return 'ProfileState(name: $name, email: $email, accountInformationUpdateStatus: $accountInformationUpdateStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileStateImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.accountInformationUpdateStatus,
                    accountInformationUpdateStatus) ||
                other.accountInformationUpdateStatus ==
                    accountInformationUpdateStatus));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, email, accountInformationUpdateStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileStateImplCopyWith<_$ProfileStateImpl> get copyWith =>
      __$$ProfileStateImplCopyWithImpl<_$ProfileStateImpl>(this, _$identity);
}

abstract class _ProfileState implements ProfileState {
  const factory _ProfileState(
      {final String? name,
      final String? email,
      final ActionState accountInformationUpdateStatus}) = _$ProfileStateImpl;

  @override
  String? get name;
  @override
  String? get email;
  @override
  ActionState get accountInformationUpdateStatus;
  @override
  @JsonKey(ignore: true)
  _$$ProfileStateImplCopyWith<_$ProfileStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
