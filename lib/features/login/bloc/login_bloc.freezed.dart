// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() submitted,
    required TResult Function(LoginActions action) changedView,
    required TResult Function(String value) emailChanged,
    required TResult Function(String value) passwordChanged,
    required TResult Function(String value) nameChanged,
    required TResult Function() validated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? submitted,
    TResult? Function(LoginActions action)? changedView,
    TResult? Function(String value)? emailChanged,
    TResult? Function(String value)? passwordChanged,
    TResult? Function(String value)? nameChanged,
    TResult? Function()? validated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? submitted,
    TResult Function(LoginActions action)? changedView,
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function(String value)? nameChanged,
    TResult Function()? validated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_LoginEvent value) $default, {
    required TResult Function(LoginSubmitted value) submitted,
    required TResult Function(ChangedView value) changedView,
    required TResult Function(LoginEmailChanged value) emailChanged,
    required TResult Function(LoginPasswordChanged value) passwordChanged,
    required TResult Function(LoginNameChanged value) nameChanged,
    required TResult Function(LoginValidated value) validated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_LoginEvent value)? $default, {
    TResult? Function(LoginSubmitted value)? submitted,
    TResult? Function(ChangedView value)? changedView,
    TResult? Function(LoginEmailChanged value)? emailChanged,
    TResult? Function(LoginPasswordChanged value)? passwordChanged,
    TResult? Function(LoginNameChanged value)? nameChanged,
    TResult? Function(LoginValidated value)? validated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_LoginEvent value)? $default, {
    TResult Function(LoginSubmitted value)? submitted,
    TResult Function(ChangedView value)? changedView,
    TResult Function(LoginEmailChanged value)? emailChanged,
    TResult Function(LoginPasswordChanged value)? passwordChanged,
    TResult Function(LoginNameChanged value)? nameChanged,
    TResult Function(LoginValidated value)? validated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginEventImplCopyWith<$Res> {
  factory _$$LoginEventImplCopyWith(
          _$LoginEventImpl value, $Res Function(_$LoginEventImpl) then) =
      __$$LoginEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginEventImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginEventImpl>
    implements _$$LoginEventImplCopyWith<$Res> {
  __$$LoginEventImplCopyWithImpl(
      _$LoginEventImpl _value, $Res Function(_$LoginEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginEventImpl implements _LoginEvent {
  const _$LoginEventImpl();

  @override
  String toString() {
    return 'LoginEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() submitted,
    required TResult Function(LoginActions action) changedView,
    required TResult Function(String value) emailChanged,
    required TResult Function(String value) passwordChanged,
    required TResult Function(String value) nameChanged,
    required TResult Function() validated,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? submitted,
    TResult? Function(LoginActions action)? changedView,
    TResult? Function(String value)? emailChanged,
    TResult? Function(String value)? passwordChanged,
    TResult? Function(String value)? nameChanged,
    TResult? Function()? validated,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? submitted,
    TResult Function(LoginActions action)? changedView,
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function(String value)? nameChanged,
    TResult Function()? validated,
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
    TResult Function(_LoginEvent value) $default, {
    required TResult Function(LoginSubmitted value) submitted,
    required TResult Function(ChangedView value) changedView,
    required TResult Function(LoginEmailChanged value) emailChanged,
    required TResult Function(LoginPasswordChanged value) passwordChanged,
    required TResult Function(LoginNameChanged value) nameChanged,
    required TResult Function(LoginValidated value) validated,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_LoginEvent value)? $default, {
    TResult? Function(LoginSubmitted value)? submitted,
    TResult? Function(ChangedView value)? changedView,
    TResult? Function(LoginEmailChanged value)? emailChanged,
    TResult? Function(LoginPasswordChanged value)? passwordChanged,
    TResult? Function(LoginNameChanged value)? nameChanged,
    TResult? Function(LoginValidated value)? validated,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_LoginEvent value)? $default, {
    TResult Function(LoginSubmitted value)? submitted,
    TResult Function(ChangedView value)? changedView,
    TResult Function(LoginEmailChanged value)? emailChanged,
    TResult Function(LoginPasswordChanged value)? passwordChanged,
    TResult Function(LoginNameChanged value)? nameChanged,
    TResult Function(LoginValidated value)? validated,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _LoginEvent implements LoginEvent {
  const factory _LoginEvent() = _$LoginEventImpl;
}

/// @nodoc
abstract class _$$LoginSubmittedImplCopyWith<$Res> {
  factory _$$LoginSubmittedImplCopyWith(_$LoginSubmittedImpl value,
          $Res Function(_$LoginSubmittedImpl) then) =
      __$$LoginSubmittedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginSubmittedImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginSubmittedImpl>
    implements _$$LoginSubmittedImplCopyWith<$Res> {
  __$$LoginSubmittedImplCopyWithImpl(
      _$LoginSubmittedImpl _value, $Res Function(_$LoginSubmittedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginSubmittedImpl implements LoginSubmitted {
  const _$LoginSubmittedImpl();

  @override
  String toString() {
    return 'LoginEvent.submitted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginSubmittedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() submitted,
    required TResult Function(LoginActions action) changedView,
    required TResult Function(String value) emailChanged,
    required TResult Function(String value) passwordChanged,
    required TResult Function(String value) nameChanged,
    required TResult Function() validated,
  }) {
    return submitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? submitted,
    TResult? Function(LoginActions action)? changedView,
    TResult? Function(String value)? emailChanged,
    TResult? Function(String value)? passwordChanged,
    TResult? Function(String value)? nameChanged,
    TResult? Function()? validated,
  }) {
    return submitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? submitted,
    TResult Function(LoginActions action)? changedView,
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function(String value)? nameChanged,
    TResult Function()? validated,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_LoginEvent value) $default, {
    required TResult Function(LoginSubmitted value) submitted,
    required TResult Function(ChangedView value) changedView,
    required TResult Function(LoginEmailChanged value) emailChanged,
    required TResult Function(LoginPasswordChanged value) passwordChanged,
    required TResult Function(LoginNameChanged value) nameChanged,
    required TResult Function(LoginValidated value) validated,
  }) {
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_LoginEvent value)? $default, {
    TResult? Function(LoginSubmitted value)? submitted,
    TResult? Function(ChangedView value)? changedView,
    TResult? Function(LoginEmailChanged value)? emailChanged,
    TResult? Function(LoginPasswordChanged value)? passwordChanged,
    TResult? Function(LoginNameChanged value)? nameChanged,
    TResult? Function(LoginValidated value)? validated,
  }) {
    return submitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_LoginEvent value)? $default, {
    TResult Function(LoginSubmitted value)? submitted,
    TResult Function(ChangedView value)? changedView,
    TResult Function(LoginEmailChanged value)? emailChanged,
    TResult Function(LoginPasswordChanged value)? passwordChanged,
    TResult Function(LoginNameChanged value)? nameChanged,
    TResult Function(LoginValidated value)? validated,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted(this);
    }
    return orElse();
  }
}

abstract class LoginSubmitted implements LoginEvent {
  const factory LoginSubmitted() = _$LoginSubmittedImpl;
}

/// @nodoc
abstract class _$$ChangedViewImplCopyWith<$Res> {
  factory _$$ChangedViewImplCopyWith(
          _$ChangedViewImpl value, $Res Function(_$ChangedViewImpl) then) =
      __$$ChangedViewImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LoginActions action});
}

/// @nodoc
class __$$ChangedViewImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$ChangedViewImpl>
    implements _$$ChangedViewImplCopyWith<$Res> {
  __$$ChangedViewImplCopyWithImpl(
      _$ChangedViewImpl _value, $Res Function(_$ChangedViewImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = null,
  }) {
    return _then(_$ChangedViewImpl(
      null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as LoginActions,
    ));
  }
}

/// @nodoc

class _$ChangedViewImpl implements ChangedView {
  const _$ChangedViewImpl(this.action);

  @override
  final LoginActions action;

  @override
  String toString() {
    return 'LoginEvent.changedView(action: $action)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangedViewImpl &&
            (identical(other.action, action) || other.action == action));
  }

  @override
  int get hashCode => Object.hash(runtimeType, action);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangedViewImplCopyWith<_$ChangedViewImpl> get copyWith =>
      __$$ChangedViewImplCopyWithImpl<_$ChangedViewImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() submitted,
    required TResult Function(LoginActions action) changedView,
    required TResult Function(String value) emailChanged,
    required TResult Function(String value) passwordChanged,
    required TResult Function(String value) nameChanged,
    required TResult Function() validated,
  }) {
    return changedView(action);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? submitted,
    TResult? Function(LoginActions action)? changedView,
    TResult? Function(String value)? emailChanged,
    TResult? Function(String value)? passwordChanged,
    TResult? Function(String value)? nameChanged,
    TResult? Function()? validated,
  }) {
    return changedView?.call(action);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? submitted,
    TResult Function(LoginActions action)? changedView,
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function(String value)? nameChanged,
    TResult Function()? validated,
    required TResult orElse(),
  }) {
    if (changedView != null) {
      return changedView(action);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_LoginEvent value) $default, {
    required TResult Function(LoginSubmitted value) submitted,
    required TResult Function(ChangedView value) changedView,
    required TResult Function(LoginEmailChanged value) emailChanged,
    required TResult Function(LoginPasswordChanged value) passwordChanged,
    required TResult Function(LoginNameChanged value) nameChanged,
    required TResult Function(LoginValidated value) validated,
  }) {
    return changedView(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_LoginEvent value)? $default, {
    TResult? Function(LoginSubmitted value)? submitted,
    TResult? Function(ChangedView value)? changedView,
    TResult? Function(LoginEmailChanged value)? emailChanged,
    TResult? Function(LoginPasswordChanged value)? passwordChanged,
    TResult? Function(LoginNameChanged value)? nameChanged,
    TResult? Function(LoginValidated value)? validated,
  }) {
    return changedView?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_LoginEvent value)? $default, {
    TResult Function(LoginSubmitted value)? submitted,
    TResult Function(ChangedView value)? changedView,
    TResult Function(LoginEmailChanged value)? emailChanged,
    TResult Function(LoginPasswordChanged value)? passwordChanged,
    TResult Function(LoginNameChanged value)? nameChanged,
    TResult Function(LoginValidated value)? validated,
    required TResult orElse(),
  }) {
    if (changedView != null) {
      return changedView(this);
    }
    return orElse();
  }
}

abstract class ChangedView implements LoginEvent {
  const factory ChangedView(final LoginActions action) = _$ChangedViewImpl;

  LoginActions get action;
  @JsonKey(ignore: true)
  _$$ChangedViewImplCopyWith<_$ChangedViewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginEmailChangedImplCopyWith<$Res> {
  factory _$$LoginEmailChangedImplCopyWith(_$LoginEmailChangedImpl value,
          $Res Function(_$LoginEmailChangedImpl) then) =
      __$$LoginEmailChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$LoginEmailChangedImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginEmailChangedImpl>
    implements _$$LoginEmailChangedImplCopyWith<$Res> {
  __$$LoginEmailChangedImplCopyWithImpl(_$LoginEmailChangedImpl _value,
      $Res Function(_$LoginEmailChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$LoginEmailChangedImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginEmailChangedImpl implements LoginEmailChanged {
  const _$LoginEmailChangedImpl(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'LoginEvent.emailChanged(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginEmailChangedImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginEmailChangedImplCopyWith<_$LoginEmailChangedImpl> get copyWith =>
      __$$LoginEmailChangedImplCopyWithImpl<_$LoginEmailChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() submitted,
    required TResult Function(LoginActions action) changedView,
    required TResult Function(String value) emailChanged,
    required TResult Function(String value) passwordChanged,
    required TResult Function(String value) nameChanged,
    required TResult Function() validated,
  }) {
    return emailChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? submitted,
    TResult? Function(LoginActions action)? changedView,
    TResult? Function(String value)? emailChanged,
    TResult? Function(String value)? passwordChanged,
    TResult? Function(String value)? nameChanged,
    TResult? Function()? validated,
  }) {
    return emailChanged?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? submitted,
    TResult Function(LoginActions action)? changedView,
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function(String value)? nameChanged,
    TResult Function()? validated,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_LoginEvent value) $default, {
    required TResult Function(LoginSubmitted value) submitted,
    required TResult Function(ChangedView value) changedView,
    required TResult Function(LoginEmailChanged value) emailChanged,
    required TResult Function(LoginPasswordChanged value) passwordChanged,
    required TResult Function(LoginNameChanged value) nameChanged,
    required TResult Function(LoginValidated value) validated,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_LoginEvent value)? $default, {
    TResult? Function(LoginSubmitted value)? submitted,
    TResult? Function(ChangedView value)? changedView,
    TResult? Function(LoginEmailChanged value)? emailChanged,
    TResult? Function(LoginPasswordChanged value)? passwordChanged,
    TResult? Function(LoginNameChanged value)? nameChanged,
    TResult? Function(LoginValidated value)? validated,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_LoginEvent value)? $default, {
    TResult Function(LoginSubmitted value)? submitted,
    TResult Function(ChangedView value)? changedView,
    TResult Function(LoginEmailChanged value)? emailChanged,
    TResult Function(LoginPasswordChanged value)? passwordChanged,
    TResult Function(LoginNameChanged value)? nameChanged,
    TResult Function(LoginValidated value)? validated,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class LoginEmailChanged implements LoginEvent {
  const factory LoginEmailChanged(final String value) = _$LoginEmailChangedImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$LoginEmailChangedImplCopyWith<_$LoginEmailChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginPasswordChangedImplCopyWith<$Res> {
  factory _$$LoginPasswordChangedImplCopyWith(_$LoginPasswordChangedImpl value,
          $Res Function(_$LoginPasswordChangedImpl) then) =
      __$$LoginPasswordChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$LoginPasswordChangedImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginPasswordChangedImpl>
    implements _$$LoginPasswordChangedImplCopyWith<$Res> {
  __$$LoginPasswordChangedImplCopyWithImpl(_$LoginPasswordChangedImpl _value,
      $Res Function(_$LoginPasswordChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$LoginPasswordChangedImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginPasswordChangedImpl implements LoginPasswordChanged {
  const _$LoginPasswordChangedImpl(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'LoginEvent.passwordChanged(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginPasswordChangedImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginPasswordChangedImplCopyWith<_$LoginPasswordChangedImpl>
      get copyWith =>
          __$$LoginPasswordChangedImplCopyWithImpl<_$LoginPasswordChangedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() submitted,
    required TResult Function(LoginActions action) changedView,
    required TResult Function(String value) emailChanged,
    required TResult Function(String value) passwordChanged,
    required TResult Function(String value) nameChanged,
    required TResult Function() validated,
  }) {
    return passwordChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? submitted,
    TResult? Function(LoginActions action)? changedView,
    TResult? Function(String value)? emailChanged,
    TResult? Function(String value)? passwordChanged,
    TResult? Function(String value)? nameChanged,
    TResult? Function()? validated,
  }) {
    return passwordChanged?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? submitted,
    TResult Function(LoginActions action)? changedView,
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function(String value)? nameChanged,
    TResult Function()? validated,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_LoginEvent value) $default, {
    required TResult Function(LoginSubmitted value) submitted,
    required TResult Function(ChangedView value) changedView,
    required TResult Function(LoginEmailChanged value) emailChanged,
    required TResult Function(LoginPasswordChanged value) passwordChanged,
    required TResult Function(LoginNameChanged value) nameChanged,
    required TResult Function(LoginValidated value) validated,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_LoginEvent value)? $default, {
    TResult? Function(LoginSubmitted value)? submitted,
    TResult? Function(ChangedView value)? changedView,
    TResult? Function(LoginEmailChanged value)? emailChanged,
    TResult? Function(LoginPasswordChanged value)? passwordChanged,
    TResult? Function(LoginNameChanged value)? nameChanged,
    TResult? Function(LoginValidated value)? validated,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_LoginEvent value)? $default, {
    TResult Function(LoginSubmitted value)? submitted,
    TResult Function(ChangedView value)? changedView,
    TResult Function(LoginEmailChanged value)? emailChanged,
    TResult Function(LoginPasswordChanged value)? passwordChanged,
    TResult Function(LoginNameChanged value)? nameChanged,
    TResult Function(LoginValidated value)? validated,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class LoginPasswordChanged implements LoginEvent {
  const factory LoginPasswordChanged(final String value) =
      _$LoginPasswordChangedImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$LoginPasswordChangedImplCopyWith<_$LoginPasswordChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginNameChangedImplCopyWith<$Res> {
  factory _$$LoginNameChangedImplCopyWith(_$LoginNameChangedImpl value,
          $Res Function(_$LoginNameChangedImpl) then) =
      __$$LoginNameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$LoginNameChangedImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginNameChangedImpl>
    implements _$$LoginNameChangedImplCopyWith<$Res> {
  __$$LoginNameChangedImplCopyWithImpl(_$LoginNameChangedImpl _value,
      $Res Function(_$LoginNameChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$LoginNameChangedImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginNameChangedImpl implements LoginNameChanged {
  const _$LoginNameChangedImpl(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'LoginEvent.nameChanged(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginNameChangedImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginNameChangedImplCopyWith<_$LoginNameChangedImpl> get copyWith =>
      __$$LoginNameChangedImplCopyWithImpl<_$LoginNameChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() submitted,
    required TResult Function(LoginActions action) changedView,
    required TResult Function(String value) emailChanged,
    required TResult Function(String value) passwordChanged,
    required TResult Function(String value) nameChanged,
    required TResult Function() validated,
  }) {
    return nameChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? submitted,
    TResult? Function(LoginActions action)? changedView,
    TResult? Function(String value)? emailChanged,
    TResult? Function(String value)? passwordChanged,
    TResult? Function(String value)? nameChanged,
    TResult? Function()? validated,
  }) {
    return nameChanged?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? submitted,
    TResult Function(LoginActions action)? changedView,
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function(String value)? nameChanged,
    TResult Function()? validated,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_LoginEvent value) $default, {
    required TResult Function(LoginSubmitted value) submitted,
    required TResult Function(ChangedView value) changedView,
    required TResult Function(LoginEmailChanged value) emailChanged,
    required TResult Function(LoginPasswordChanged value) passwordChanged,
    required TResult Function(LoginNameChanged value) nameChanged,
    required TResult Function(LoginValidated value) validated,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_LoginEvent value)? $default, {
    TResult? Function(LoginSubmitted value)? submitted,
    TResult? Function(ChangedView value)? changedView,
    TResult? Function(LoginEmailChanged value)? emailChanged,
    TResult? Function(LoginPasswordChanged value)? passwordChanged,
    TResult? Function(LoginNameChanged value)? nameChanged,
    TResult? Function(LoginValidated value)? validated,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_LoginEvent value)? $default, {
    TResult Function(LoginSubmitted value)? submitted,
    TResult Function(ChangedView value)? changedView,
    TResult Function(LoginEmailChanged value)? emailChanged,
    TResult Function(LoginPasswordChanged value)? passwordChanged,
    TResult Function(LoginNameChanged value)? nameChanged,
    TResult Function(LoginValidated value)? validated,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class LoginNameChanged implements LoginEvent {
  const factory LoginNameChanged(final String value) = _$LoginNameChangedImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$LoginNameChangedImplCopyWith<_$LoginNameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginValidatedImplCopyWith<$Res> {
  factory _$$LoginValidatedImplCopyWith(_$LoginValidatedImpl value,
          $Res Function(_$LoginValidatedImpl) then) =
      __$$LoginValidatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginValidatedImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginValidatedImpl>
    implements _$$LoginValidatedImplCopyWith<$Res> {
  __$$LoginValidatedImplCopyWithImpl(
      _$LoginValidatedImpl _value, $Res Function(_$LoginValidatedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginValidatedImpl implements LoginValidated {
  const _$LoginValidatedImpl();

  @override
  String toString() {
    return 'LoginEvent.validated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginValidatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() submitted,
    required TResult Function(LoginActions action) changedView,
    required TResult Function(String value) emailChanged,
    required TResult Function(String value) passwordChanged,
    required TResult Function(String value) nameChanged,
    required TResult Function() validated,
  }) {
    return validated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? submitted,
    TResult? Function(LoginActions action)? changedView,
    TResult? Function(String value)? emailChanged,
    TResult? Function(String value)? passwordChanged,
    TResult? Function(String value)? nameChanged,
    TResult? Function()? validated,
  }) {
    return validated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? submitted,
    TResult Function(LoginActions action)? changedView,
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function(String value)? nameChanged,
    TResult Function()? validated,
    required TResult orElse(),
  }) {
    if (validated != null) {
      return validated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_LoginEvent value) $default, {
    required TResult Function(LoginSubmitted value) submitted,
    required TResult Function(ChangedView value) changedView,
    required TResult Function(LoginEmailChanged value) emailChanged,
    required TResult Function(LoginPasswordChanged value) passwordChanged,
    required TResult Function(LoginNameChanged value) nameChanged,
    required TResult Function(LoginValidated value) validated,
  }) {
    return validated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_LoginEvent value)? $default, {
    TResult? Function(LoginSubmitted value)? submitted,
    TResult? Function(ChangedView value)? changedView,
    TResult? Function(LoginEmailChanged value)? emailChanged,
    TResult? Function(LoginPasswordChanged value)? passwordChanged,
    TResult? Function(LoginNameChanged value)? nameChanged,
    TResult? Function(LoginValidated value)? validated,
  }) {
    return validated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_LoginEvent value)? $default, {
    TResult Function(LoginSubmitted value)? submitted,
    TResult Function(ChangedView value)? changedView,
    TResult Function(LoginEmailChanged value)? emailChanged,
    TResult Function(LoginPasswordChanged value)? passwordChanged,
    TResult Function(LoginNameChanged value)? nameChanged,
    TResult Function(LoginValidated value)? validated,
    required TResult orElse(),
  }) {
    if (validated != null) {
      return validated(this);
    }
    return orElse();
  }
}

abstract class LoginValidated implements LoginEvent {
  const factory LoginValidated() = _$LoginValidatedImpl;
}

/// @nodoc
mixin _$LoginState {
  bool? get loginSuccess => throw _privateConstructorUsedError;
  dynamic get email => throw _privateConstructorUsedError;
  dynamic get password => throw _privateConstructorUsedError;
  dynamic get name => throw _privateConstructorUsedError;
  bool? get formIsValid => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  ActionState get forgotPasswordState => throw _privateConstructorUsedError;
  FormzSubmissionStatus get formStatus => throw _privateConstructorUsedError;
  LoginActions get action => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call(
      {bool? loginSuccess,
      dynamic email,
      dynamic password,
      dynamic name,
      bool? formIsValid,
      String? message,
      ActionState forgotPasswordState,
      FormzSubmissionStatus formStatus,
      LoginActions action});

  $ActionStateCopyWith<$Res> get forgotPasswordState;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginSuccess = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? name = freezed,
    Object? formIsValid = freezed,
    Object? message = freezed,
    Object? forgotPasswordState = null,
    Object? formStatus = null,
    Object? action = null,
  }) {
    return _then(_value.copyWith(
      loginSuccess: freezed == loginSuccess
          ? _value.loginSuccess
          : loginSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as dynamic,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as dynamic,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as dynamic,
      formIsValid: freezed == formIsValid
          ? _value.formIsValid
          : formIsValid // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      forgotPasswordState: null == forgotPasswordState
          ? _value.forgotPasswordState
          : forgotPasswordState // ignore: cast_nullable_to_non_nullable
              as ActionState,
      formStatus: null == formStatus
          ? _value.formStatus
          : formStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as LoginActions,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ActionStateCopyWith<$Res> get forgotPasswordState {
    return $ActionStateCopyWith<$Res>(_value.forgotPasswordState, (value) {
      return _then(_value.copyWith(forgotPasswordState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoginStateImplCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$LoginStateImplCopyWith(
          _$LoginStateImpl value, $Res Function(_$LoginStateImpl) then) =
      __$$LoginStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? loginSuccess,
      dynamic email,
      dynamic password,
      dynamic name,
      bool? formIsValid,
      String? message,
      ActionState forgotPasswordState,
      FormzSubmissionStatus formStatus,
      LoginActions action});

  @override
  $ActionStateCopyWith<$Res> get forgotPasswordState;
}

/// @nodoc
class __$$LoginStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateImpl>
    implements _$$LoginStateImplCopyWith<$Res> {
  __$$LoginStateImplCopyWithImpl(
      _$LoginStateImpl _value, $Res Function(_$LoginStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginSuccess = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? name = freezed,
    Object? formIsValid = freezed,
    Object? message = freezed,
    Object? forgotPasswordState = null,
    Object? formStatus = null,
    Object? action = null,
  }) {
    return _then(_$LoginStateImpl(
      freezed == loginSuccess
          ? _value.loginSuccess
          : loginSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
      email: freezed == email ? _value.email! : email,
      password: freezed == password ? _value.password! : password,
      name: freezed == name ? _value.name! : name,
      formIsValid: freezed == formIsValid
          ? _value.formIsValid
          : formIsValid // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      forgotPasswordState: null == forgotPasswordState
          ? _value.forgotPasswordState
          : forgotPasswordState // ignore: cast_nullable_to_non_nullable
              as ActionState,
      formStatus: null == formStatus
          ? _value.formStatus
          : formStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as LoginActions,
    ));
  }
}

/// @nodoc

class _$LoginStateImpl implements _LoginState {
  const _$LoginStateImpl(this.loginSuccess,
      {this.email = const Email.pure(),
      this.password = const Password.pure(),
      this.name = const Name.pure(),
      this.formIsValid,
      this.message,
      this.forgotPasswordState = const ActionState.idle(),
      this.formStatus = FormzSubmissionStatus.initial,
      this.action = LoginActions.register});

  @override
  final bool? loginSuccess;
  @override
  @JsonKey()
  final dynamic email;
  @override
  @JsonKey()
  final dynamic password;
  @override
  @JsonKey()
  final dynamic name;
  @override
  final bool? formIsValid;
  @override
  final String? message;
  @override
  @JsonKey()
  final ActionState forgotPasswordState;
  @override
  @JsonKey()
  final FormzSubmissionStatus formStatus;
  @override
  @JsonKey()
  final LoginActions action;

  @override
  String toString() {
    return 'LoginState(loginSuccess: $loginSuccess, email: $email, password: $password, name: $name, formIsValid: $formIsValid, message: $message, forgotPasswordState: $forgotPasswordState, formStatus: $formStatus, action: $action)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStateImpl &&
            (identical(other.loginSuccess, loginSuccess) ||
                other.loginSuccess == loginSuccess) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            (identical(other.formIsValid, formIsValid) ||
                other.formIsValid == formIsValid) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.forgotPasswordState, forgotPasswordState) ||
                other.forgotPasswordState == forgotPasswordState) &&
            (identical(other.formStatus, formStatus) ||
                other.formStatus == formStatus) &&
            (identical(other.action, action) || other.action == action));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      loginSuccess,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(name),
      formIsValid,
      message,
      forgotPasswordState,
      formStatus,
      action);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      __$$LoginStateImplCopyWithImpl<_$LoginStateImpl>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(final bool? loginSuccess,
      {final dynamic email,
      final dynamic password,
      final dynamic name,
      final bool? formIsValid,
      final String? message,
      final ActionState forgotPasswordState,
      final FormzSubmissionStatus formStatus,
      final LoginActions action}) = _$LoginStateImpl;

  @override
  bool? get loginSuccess;
  @override
  dynamic get email;
  @override
  dynamic get password;
  @override
  dynamic get name;
  @override
  bool? get formIsValid;
  @override
  String? get message;
  @override
  ActionState get forgotPasswordState;
  @override
  FormzSubmissionStatus get formStatus;
  @override
  LoginActions get action;
  @override
  @JsonKey(ignore: true)
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
