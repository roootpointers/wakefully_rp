// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthenticationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(bool isLoggedIn) loggedInChanged,
    required TResult Function() logoutRequested,
    required TResult Function(String password) deactivateRequested,
    required TResult Function() clearActions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(bool isLoggedIn)? loggedInChanged,
    TResult? Function()? logoutRequested,
    TResult? Function(String password)? deactivateRequested,
    TResult? Function()? clearActions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(bool isLoggedIn)? loggedInChanged,
    TResult Function()? logoutRequested,
    TResult Function(String password)? deactivateRequested,
    TResult Function()? clearActions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuthenticationEvent value) $default, {
    required TResult Function(LoggedInChanged value) loggedInChanged,
    required TResult Function(LogoutRequested value) logoutRequested,
    required TResult Function(DeactivateRequested value) deactivateRequested,
    required TResult Function(ClearActions value) clearActions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AuthenticationEvent value)? $default, {
    TResult? Function(LoggedInChanged value)? loggedInChanged,
    TResult? Function(LogoutRequested value)? logoutRequested,
    TResult? Function(DeactivateRequested value)? deactivateRequested,
    TResult? Function(ClearActions value)? clearActions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthenticationEvent value)? $default, {
    TResult Function(LoggedInChanged value)? loggedInChanged,
    TResult Function(LogoutRequested value)? logoutRequested,
    TResult Function(DeactivateRequested value)? deactivateRequested,
    TResult Function(ClearActions value)? clearActions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationEventCopyWith<$Res> {
  factory $AuthenticationEventCopyWith(
          AuthenticationEvent value, $Res Function(AuthenticationEvent) then) =
      _$AuthenticationEventCopyWithImpl<$Res, AuthenticationEvent>;
}

/// @nodoc
class _$AuthenticationEventCopyWithImpl<$Res, $Val extends AuthenticationEvent>
    implements $AuthenticationEventCopyWith<$Res> {
  _$AuthenticationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthenticationEventImplCopyWith<$Res> {
  factory _$$AuthenticationEventImplCopyWith(_$AuthenticationEventImpl value,
          $Res Function(_$AuthenticationEventImpl) then) =
      __$$AuthenticationEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticationEventImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$AuthenticationEventImpl>
    implements _$$AuthenticationEventImplCopyWith<$Res> {
  __$$AuthenticationEventImplCopyWithImpl(_$AuthenticationEventImpl _value,
      $Res Function(_$AuthenticationEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthenticationEventImpl implements _AuthenticationEvent {
  const _$AuthenticationEventImpl();

  @override
  String toString() {
    return 'AuthenticationEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(bool isLoggedIn) loggedInChanged,
    required TResult Function() logoutRequested,
    required TResult Function(String password) deactivateRequested,
    required TResult Function() clearActions,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(bool isLoggedIn)? loggedInChanged,
    TResult? Function()? logoutRequested,
    TResult? Function(String password)? deactivateRequested,
    TResult? Function()? clearActions,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(bool isLoggedIn)? loggedInChanged,
    TResult Function()? logoutRequested,
    TResult Function(String password)? deactivateRequested,
    TResult Function()? clearActions,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuthenticationEvent value) $default, {
    required TResult Function(LoggedInChanged value) loggedInChanged,
    required TResult Function(LogoutRequested value) logoutRequested,
    required TResult Function(DeactivateRequested value) deactivateRequested,
    required TResult Function(ClearActions value) clearActions,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AuthenticationEvent value)? $default, {
    TResult? Function(LoggedInChanged value)? loggedInChanged,
    TResult? Function(LogoutRequested value)? logoutRequested,
    TResult? Function(DeactivateRequested value)? deactivateRequested,
    TResult? Function(ClearActions value)? clearActions,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthenticationEvent value)? $default, {
    TResult Function(LoggedInChanged value)? loggedInChanged,
    TResult Function(LogoutRequested value)? logoutRequested,
    TResult Function(DeactivateRequested value)? deactivateRequested,
    TResult Function(ClearActions value)? clearActions,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _AuthenticationEvent implements AuthenticationEvent {
  const factory _AuthenticationEvent() = _$AuthenticationEventImpl;
}

/// @nodoc
abstract class _$$LoggedInChangedImplCopyWith<$Res> {
  factory _$$LoggedInChangedImplCopyWith(_$LoggedInChangedImpl value,
          $Res Function(_$LoggedInChangedImpl) then) =
      __$$LoggedInChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isLoggedIn});
}

/// @nodoc
class __$$LoggedInChangedImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$LoggedInChangedImpl>
    implements _$$LoggedInChangedImplCopyWith<$Res> {
  __$$LoggedInChangedImplCopyWithImpl(
      _$LoggedInChangedImpl _value, $Res Function(_$LoggedInChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoggedIn = null,
  }) {
    return _then(_$LoggedInChangedImpl(
      null == isLoggedIn
          ? _value.isLoggedIn
          : isLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoggedInChangedImpl implements LoggedInChanged {
  const _$LoggedInChangedImpl(this.isLoggedIn);

  @override
  final bool isLoggedIn;

  @override
  String toString() {
    return 'AuthenticationEvent.loggedInChanged(isLoggedIn: $isLoggedIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoggedInChangedImpl &&
            (identical(other.isLoggedIn, isLoggedIn) ||
                other.isLoggedIn == isLoggedIn));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoggedIn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoggedInChangedImplCopyWith<_$LoggedInChangedImpl> get copyWith =>
      __$$LoggedInChangedImplCopyWithImpl<_$LoggedInChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(bool isLoggedIn) loggedInChanged,
    required TResult Function() logoutRequested,
    required TResult Function(String password) deactivateRequested,
    required TResult Function() clearActions,
  }) {
    return loggedInChanged(isLoggedIn);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(bool isLoggedIn)? loggedInChanged,
    TResult? Function()? logoutRequested,
    TResult? Function(String password)? deactivateRequested,
    TResult? Function()? clearActions,
  }) {
    return loggedInChanged?.call(isLoggedIn);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(bool isLoggedIn)? loggedInChanged,
    TResult Function()? logoutRequested,
    TResult Function(String password)? deactivateRequested,
    TResult Function()? clearActions,
    required TResult orElse(),
  }) {
    if (loggedInChanged != null) {
      return loggedInChanged(isLoggedIn);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuthenticationEvent value) $default, {
    required TResult Function(LoggedInChanged value) loggedInChanged,
    required TResult Function(LogoutRequested value) logoutRequested,
    required TResult Function(DeactivateRequested value) deactivateRequested,
    required TResult Function(ClearActions value) clearActions,
  }) {
    return loggedInChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AuthenticationEvent value)? $default, {
    TResult? Function(LoggedInChanged value)? loggedInChanged,
    TResult? Function(LogoutRequested value)? logoutRequested,
    TResult? Function(DeactivateRequested value)? deactivateRequested,
    TResult? Function(ClearActions value)? clearActions,
  }) {
    return loggedInChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthenticationEvent value)? $default, {
    TResult Function(LoggedInChanged value)? loggedInChanged,
    TResult Function(LogoutRequested value)? logoutRequested,
    TResult Function(DeactivateRequested value)? deactivateRequested,
    TResult Function(ClearActions value)? clearActions,
    required TResult orElse(),
  }) {
    if (loggedInChanged != null) {
      return loggedInChanged(this);
    }
    return orElse();
  }
}

abstract class LoggedInChanged implements AuthenticationEvent {
  const factory LoggedInChanged(final bool isLoggedIn) = _$LoggedInChangedImpl;

  bool get isLoggedIn;
  @JsonKey(ignore: true)
  _$$LoggedInChangedImplCopyWith<_$LoggedInChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogoutRequestedImplCopyWith<$Res> {
  factory _$$LogoutRequestedImplCopyWith(_$LogoutRequestedImpl value,
          $Res Function(_$LogoutRequestedImpl) then) =
      __$$LogoutRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutRequestedImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$LogoutRequestedImpl>
    implements _$$LogoutRequestedImplCopyWith<$Res> {
  __$$LogoutRequestedImplCopyWithImpl(
      _$LogoutRequestedImpl _value, $Res Function(_$LogoutRequestedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogoutRequestedImpl implements LogoutRequested {
  const _$LogoutRequestedImpl();

  @override
  String toString() {
    return 'AuthenticationEvent.logoutRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(bool isLoggedIn) loggedInChanged,
    required TResult Function() logoutRequested,
    required TResult Function(String password) deactivateRequested,
    required TResult Function() clearActions,
  }) {
    return logoutRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(bool isLoggedIn)? loggedInChanged,
    TResult? Function()? logoutRequested,
    TResult? Function(String password)? deactivateRequested,
    TResult? Function()? clearActions,
  }) {
    return logoutRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(bool isLoggedIn)? loggedInChanged,
    TResult Function()? logoutRequested,
    TResult Function(String password)? deactivateRequested,
    TResult Function()? clearActions,
    required TResult orElse(),
  }) {
    if (logoutRequested != null) {
      return logoutRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuthenticationEvent value) $default, {
    required TResult Function(LoggedInChanged value) loggedInChanged,
    required TResult Function(LogoutRequested value) logoutRequested,
    required TResult Function(DeactivateRequested value) deactivateRequested,
    required TResult Function(ClearActions value) clearActions,
  }) {
    return logoutRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AuthenticationEvent value)? $default, {
    TResult? Function(LoggedInChanged value)? loggedInChanged,
    TResult? Function(LogoutRequested value)? logoutRequested,
    TResult? Function(DeactivateRequested value)? deactivateRequested,
    TResult? Function(ClearActions value)? clearActions,
  }) {
    return logoutRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthenticationEvent value)? $default, {
    TResult Function(LoggedInChanged value)? loggedInChanged,
    TResult Function(LogoutRequested value)? logoutRequested,
    TResult Function(DeactivateRequested value)? deactivateRequested,
    TResult Function(ClearActions value)? clearActions,
    required TResult orElse(),
  }) {
    if (logoutRequested != null) {
      return logoutRequested(this);
    }
    return orElse();
  }
}

abstract class LogoutRequested implements AuthenticationEvent {
  const factory LogoutRequested() = _$LogoutRequestedImpl;
}

/// @nodoc
abstract class _$$DeactivateRequestedImplCopyWith<$Res> {
  factory _$$DeactivateRequestedImplCopyWith(_$DeactivateRequestedImpl value,
          $Res Function(_$DeactivateRequestedImpl) then) =
      __$$DeactivateRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$DeactivateRequestedImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$DeactivateRequestedImpl>
    implements _$$DeactivateRequestedImplCopyWith<$Res> {
  __$$DeactivateRequestedImplCopyWithImpl(_$DeactivateRequestedImpl _value,
      $Res Function(_$DeactivateRequestedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$DeactivateRequestedImpl(
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeactivateRequestedImpl implements DeactivateRequested {
  const _$DeactivateRequestedImpl(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'AuthenticationEvent.deactivateRequested(password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeactivateRequestedImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeactivateRequestedImplCopyWith<_$DeactivateRequestedImpl> get copyWith =>
      __$$DeactivateRequestedImplCopyWithImpl<_$DeactivateRequestedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(bool isLoggedIn) loggedInChanged,
    required TResult Function() logoutRequested,
    required TResult Function(String password) deactivateRequested,
    required TResult Function() clearActions,
  }) {
    return deactivateRequested(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(bool isLoggedIn)? loggedInChanged,
    TResult? Function()? logoutRequested,
    TResult? Function(String password)? deactivateRequested,
    TResult? Function()? clearActions,
  }) {
    return deactivateRequested?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(bool isLoggedIn)? loggedInChanged,
    TResult Function()? logoutRequested,
    TResult Function(String password)? deactivateRequested,
    TResult Function()? clearActions,
    required TResult orElse(),
  }) {
    if (deactivateRequested != null) {
      return deactivateRequested(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuthenticationEvent value) $default, {
    required TResult Function(LoggedInChanged value) loggedInChanged,
    required TResult Function(LogoutRequested value) logoutRequested,
    required TResult Function(DeactivateRequested value) deactivateRequested,
    required TResult Function(ClearActions value) clearActions,
  }) {
    return deactivateRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AuthenticationEvent value)? $default, {
    TResult? Function(LoggedInChanged value)? loggedInChanged,
    TResult? Function(LogoutRequested value)? logoutRequested,
    TResult? Function(DeactivateRequested value)? deactivateRequested,
    TResult? Function(ClearActions value)? clearActions,
  }) {
    return deactivateRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthenticationEvent value)? $default, {
    TResult Function(LoggedInChanged value)? loggedInChanged,
    TResult Function(LogoutRequested value)? logoutRequested,
    TResult Function(DeactivateRequested value)? deactivateRequested,
    TResult Function(ClearActions value)? clearActions,
    required TResult orElse(),
  }) {
    if (deactivateRequested != null) {
      return deactivateRequested(this);
    }
    return orElse();
  }
}

abstract class DeactivateRequested implements AuthenticationEvent {
  const factory DeactivateRequested(final String password) =
      _$DeactivateRequestedImpl;

  String get password;
  @JsonKey(ignore: true)
  _$$DeactivateRequestedImplCopyWith<_$DeactivateRequestedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearActionsImplCopyWith<$Res> {
  factory _$$ClearActionsImplCopyWith(
          _$ClearActionsImpl value, $Res Function(_$ClearActionsImpl) then) =
      __$$ClearActionsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearActionsImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$ClearActionsImpl>
    implements _$$ClearActionsImplCopyWith<$Res> {
  __$$ClearActionsImplCopyWithImpl(
      _$ClearActionsImpl _value, $Res Function(_$ClearActionsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearActionsImpl implements ClearActions {
  const _$ClearActionsImpl();

  @override
  String toString() {
    return 'AuthenticationEvent.clearActions()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearActionsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(bool isLoggedIn) loggedInChanged,
    required TResult Function() logoutRequested,
    required TResult Function(String password) deactivateRequested,
    required TResult Function() clearActions,
  }) {
    return clearActions();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(bool isLoggedIn)? loggedInChanged,
    TResult? Function()? logoutRequested,
    TResult? Function(String password)? deactivateRequested,
    TResult? Function()? clearActions,
  }) {
    return clearActions?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(bool isLoggedIn)? loggedInChanged,
    TResult Function()? logoutRequested,
    TResult Function(String password)? deactivateRequested,
    TResult Function()? clearActions,
    required TResult orElse(),
  }) {
    if (clearActions != null) {
      return clearActions();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuthenticationEvent value) $default, {
    required TResult Function(LoggedInChanged value) loggedInChanged,
    required TResult Function(LogoutRequested value) logoutRequested,
    required TResult Function(DeactivateRequested value) deactivateRequested,
    required TResult Function(ClearActions value) clearActions,
  }) {
    return clearActions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AuthenticationEvent value)? $default, {
    TResult? Function(LoggedInChanged value)? loggedInChanged,
    TResult? Function(LogoutRequested value)? logoutRequested,
    TResult? Function(DeactivateRequested value)? deactivateRequested,
    TResult? Function(ClearActions value)? clearActions,
  }) {
    return clearActions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthenticationEvent value)? $default, {
    TResult Function(LoggedInChanged value)? loggedInChanged,
    TResult Function(LogoutRequested value)? logoutRequested,
    TResult Function(DeactivateRequested value)? deactivateRequested,
    TResult Function(ClearActions value)? clearActions,
    required TResult orElse(),
  }) {
    if (clearActions != null) {
      return clearActions(this);
    }
    return orElse();
  }
}

abstract class ClearActions implements AuthenticationEvent {
  const factory ClearActions() = _$ClearActionsImpl;
}

AuthenticationState _$AuthenticationStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'authenticated':
      return Authenticated.fromJson(json);
    case 'unauthenticated':
      return Unauthenticated.fromJson(json);
    case 'unknown':
      return Unknown.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'AuthenticationState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$AuthenticationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ActionState deactivateState) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ActionState deactivateState)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ActionState deactivateState)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Unknown value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(Unknown value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res, AuthenticationState>;
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res, $Val extends AuthenticationState>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthenticatedImplCopyWith<$Res> {
  factory _$$AuthenticatedImplCopyWith(
          _$AuthenticatedImpl value, $Res Function(_$AuthenticatedImpl) then) =
      __$$AuthenticatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ActionState deactivateState});

  $ActionStateCopyWith<$Res> get deactivateState;
}

/// @nodoc
class __$$AuthenticatedImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$AuthenticatedImpl>
    implements _$$AuthenticatedImplCopyWith<$Res> {
  __$$AuthenticatedImplCopyWithImpl(
      _$AuthenticatedImpl _value, $Res Function(_$AuthenticatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deactivateState = null,
  }) {
    return _then(_$AuthenticatedImpl(
      deactivateState: null == deactivateState
          ? _value.deactivateState
          : deactivateState // ignore: cast_nullable_to_non_nullable
              as ActionState,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ActionStateCopyWith<$Res> get deactivateState {
    return $ActionStateCopyWith<$Res>(_value.deactivateState, (value) {
      return _then(_value.copyWith(deactivateState: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthenticatedImpl implements Authenticated {
  const _$AuthenticatedImpl(
      {this.deactivateState = const ActionState.idle(), final String? $type})
      : $type = $type ?? 'authenticated';

  factory _$AuthenticatedImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthenticatedImplFromJson(json);

  @override
  @JsonKey()
  final ActionState deactivateState;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthenticationState.authenticated(deactivateState: $deactivateState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticatedImpl &&
            (identical(other.deactivateState, deactivateState) ||
                other.deactivateState == deactivateState));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, deactivateState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticatedImplCopyWith<_$AuthenticatedImpl> get copyWith =>
      __$$AuthenticatedImplCopyWithImpl<_$AuthenticatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ActionState deactivateState) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() unknown,
  }) {
    return authenticated(deactivateState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ActionState deactivateState)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? unknown,
  }) {
    return authenticated?.call(deactivateState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ActionState deactivateState)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(deactivateState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Unknown value) unknown,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(Unknown value)? unknown,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthenticatedImplToJson(
      this,
    );
  }
}

abstract class Authenticated implements AuthenticationState {
  const factory Authenticated({final ActionState deactivateState}) =
      _$AuthenticatedImpl;

  factory Authenticated.fromJson(Map<String, dynamic> json) =
      _$AuthenticatedImpl.fromJson;

  ActionState get deactivateState;
  @JsonKey(ignore: true)
  _$$AuthenticatedImplCopyWith<_$AuthenticatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnauthenticatedImplCopyWith<$Res> {
  factory _$$UnauthenticatedImplCopyWith(_$UnauthenticatedImpl value,
          $Res Function(_$UnauthenticatedImpl) then) =
      __$$UnauthenticatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnauthenticatedImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$UnauthenticatedImpl>
    implements _$$UnauthenticatedImplCopyWith<$Res> {
  __$$UnauthenticatedImplCopyWithImpl(
      _$UnauthenticatedImpl _value, $Res Function(_$UnauthenticatedImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$UnauthenticatedImpl implements Unauthenticated {
  const _$UnauthenticatedImpl({final String? $type})
      : $type = $type ?? 'unauthenticated';

  factory _$UnauthenticatedImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnauthenticatedImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthenticationState.unauthenticated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnauthenticatedImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ActionState deactivateState) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() unknown,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ActionState deactivateState)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? unknown,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ActionState deactivateState)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Unknown value) unknown,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(Unknown value)? unknown,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnauthenticatedImplToJson(
      this,
    );
  }
}

abstract class Unauthenticated implements AuthenticationState {
  const factory Unauthenticated() = _$UnauthenticatedImpl;

  factory Unauthenticated.fromJson(Map<String, dynamic> json) =
      _$UnauthenticatedImpl.fromJson;
}

/// @nodoc
abstract class _$$UnknownImplCopyWith<$Res> {
  factory _$$UnknownImplCopyWith(
          _$UnknownImpl value, $Res Function(_$UnknownImpl) then) =
      __$$UnknownImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnknownImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$UnknownImpl>
    implements _$$UnknownImplCopyWith<$Res> {
  __$$UnknownImplCopyWithImpl(
      _$UnknownImpl _value, $Res Function(_$UnknownImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$UnknownImpl implements Unknown {
  const _$UnknownImpl({final String? $type}) : $type = $type ?? 'unknown';

  factory _$UnknownImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnknownImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthenticationState.unknown()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnknownImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ActionState deactivateState) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() unknown,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ActionState deactivateState)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? unknown,
  }) {
    return unknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ActionState deactivateState)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Unknown value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(Unknown value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnknownImplToJson(
      this,
    );
  }
}

abstract class Unknown implements AuthenticationState {
  const factory Unknown() = _$UnknownImpl;

  factory Unknown.fromJson(Map<String, dynamic> json) = _$UnknownImpl.fromJson;
}
