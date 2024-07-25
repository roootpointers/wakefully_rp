// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String? message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String? message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String? message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PageStateInitial value) initial,
    required TResult Function(PageStateLoading value) loading,
    required TResult Function(PageStateSuccess value) success,
    required TResult Function(PageStateFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PageStateInitial value)? initial,
    TResult? Function(PageStateLoading value)? loading,
    TResult? Function(PageStateSuccess value)? success,
    TResult? Function(PageStateFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PageStateInitial value)? initial,
    TResult Function(PageStateLoading value)? loading,
    TResult Function(PageStateSuccess value)? success,
    TResult Function(PageStateFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageStateCopyWith<$Res> {
  factory $PageStateCopyWith(PageState value, $Res Function(PageState) then) =
      _$PageStateCopyWithImpl<$Res, PageState>;
}

/// @nodoc
class _$PageStateCopyWithImpl<$Res, $Val extends PageState>
    implements $PageStateCopyWith<$Res> {
  _$PageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PageStateInitialImplCopyWith<$Res> {
  factory _$$PageStateInitialImplCopyWith(_$PageStateInitialImpl value,
          $Res Function(_$PageStateInitialImpl) then) =
      __$$PageStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PageStateInitialImplCopyWithImpl<$Res>
    extends _$PageStateCopyWithImpl<$Res, _$PageStateInitialImpl>
    implements _$$PageStateInitialImplCopyWith<$Res> {
  __$$PageStateInitialImplCopyWithImpl(_$PageStateInitialImpl _value,
      $Res Function(_$PageStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PageStateInitialImpl implements PageStateInitial {
  const _$PageStateInitialImpl();

  @override
  String toString() {
    return 'PageState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PageStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String? message) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String? message)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String? message)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PageStateInitial value) initial,
    required TResult Function(PageStateLoading value) loading,
    required TResult Function(PageStateSuccess value) success,
    required TResult Function(PageStateFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PageStateInitial value)? initial,
    TResult? Function(PageStateLoading value)? loading,
    TResult? Function(PageStateSuccess value)? success,
    TResult? Function(PageStateFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PageStateInitial value)? initial,
    TResult Function(PageStateLoading value)? loading,
    TResult Function(PageStateSuccess value)? success,
    TResult Function(PageStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class PageStateInitial implements PageState {
  const factory PageStateInitial() = _$PageStateInitialImpl;
}

/// @nodoc
abstract class _$$PageStateLoadingImplCopyWith<$Res> {
  factory _$$PageStateLoadingImplCopyWith(_$PageStateLoadingImpl value,
          $Res Function(_$PageStateLoadingImpl) then) =
      __$$PageStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PageStateLoadingImplCopyWithImpl<$Res>
    extends _$PageStateCopyWithImpl<$Res, _$PageStateLoadingImpl>
    implements _$$PageStateLoadingImplCopyWith<$Res> {
  __$$PageStateLoadingImplCopyWithImpl(_$PageStateLoadingImpl _value,
      $Res Function(_$PageStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PageStateLoadingImpl implements PageStateLoading {
  const _$PageStateLoadingImpl();

  @override
  String toString() {
    return 'PageState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PageStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String? message) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String? message)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String? message)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PageStateInitial value) initial,
    required TResult Function(PageStateLoading value) loading,
    required TResult Function(PageStateSuccess value) success,
    required TResult Function(PageStateFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PageStateInitial value)? initial,
    TResult? Function(PageStateLoading value)? loading,
    TResult? Function(PageStateSuccess value)? success,
    TResult? Function(PageStateFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PageStateInitial value)? initial,
    TResult Function(PageStateLoading value)? loading,
    TResult Function(PageStateSuccess value)? success,
    TResult Function(PageStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class PageStateLoading implements PageState {
  const factory PageStateLoading() = _$PageStateLoadingImpl;
}

/// @nodoc
abstract class _$$PageStateSuccessImplCopyWith<$Res> {
  factory _$$PageStateSuccessImplCopyWith(_$PageStateSuccessImpl value,
          $Res Function(_$PageStateSuccessImpl) then) =
      __$$PageStateSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PageStateSuccessImplCopyWithImpl<$Res>
    extends _$PageStateCopyWithImpl<$Res, _$PageStateSuccessImpl>
    implements _$$PageStateSuccessImplCopyWith<$Res> {
  __$$PageStateSuccessImplCopyWithImpl(_$PageStateSuccessImpl _value,
      $Res Function(_$PageStateSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PageStateSuccessImpl implements PageStateSuccess {
  const _$PageStateSuccessImpl();

  @override
  String toString() {
    return 'PageState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PageStateSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String? message) failure,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String? message)? failure,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String? message)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PageStateInitial value) initial,
    required TResult Function(PageStateLoading value) loading,
    required TResult Function(PageStateSuccess value) success,
    required TResult Function(PageStateFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PageStateInitial value)? initial,
    TResult? Function(PageStateLoading value)? loading,
    TResult? Function(PageStateSuccess value)? success,
    TResult? Function(PageStateFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PageStateInitial value)? initial,
    TResult Function(PageStateLoading value)? loading,
    TResult Function(PageStateSuccess value)? success,
    TResult Function(PageStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class PageStateSuccess implements PageState {
  const factory PageStateSuccess() = _$PageStateSuccessImpl;
}

/// @nodoc
abstract class _$$PageStateFailureImplCopyWith<$Res> {
  factory _$$PageStateFailureImplCopyWith(_$PageStateFailureImpl value,
          $Res Function(_$PageStateFailureImpl) then) =
      __$$PageStateFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$PageStateFailureImplCopyWithImpl<$Res>
    extends _$PageStateCopyWithImpl<$Res, _$PageStateFailureImpl>
    implements _$$PageStateFailureImplCopyWith<$Res> {
  __$$PageStateFailureImplCopyWithImpl(_$PageStateFailureImpl _value,
      $Res Function(_$PageStateFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$PageStateFailureImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PageStateFailureImpl implements PageStateFailure {
  const _$PageStateFailureImpl({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'PageState.failure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageStateFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PageStateFailureImplCopyWith<_$PageStateFailureImpl> get copyWith =>
      __$$PageStateFailureImplCopyWithImpl<_$PageStateFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String? message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String? message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String? message)? failure,
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
    required TResult Function(PageStateInitial value) initial,
    required TResult Function(PageStateLoading value) loading,
    required TResult Function(PageStateSuccess value) success,
    required TResult Function(PageStateFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PageStateInitial value)? initial,
    TResult? Function(PageStateLoading value)? loading,
    TResult? Function(PageStateSuccess value)? success,
    TResult? Function(PageStateFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PageStateInitial value)? initial,
    TResult Function(PageStateLoading value)? loading,
    TResult Function(PageStateSuccess value)? success,
    TResult Function(PageStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class PageStateFailure implements PageState {
  const factory PageStateFailure({final String? message}) =
      _$PageStateFailureImpl;

  String? get message;
  @JsonKey(ignore: true)
  _$$PageStateFailureImplCopyWith<_$PageStateFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
