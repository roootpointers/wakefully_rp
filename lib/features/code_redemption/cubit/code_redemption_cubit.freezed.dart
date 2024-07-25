// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'code_redemption_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CodeRedemptionState {
  PageState get pageStatus => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CodeRedemptionStateCopyWith<CodeRedemptionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CodeRedemptionStateCopyWith<$Res> {
  factory $CodeRedemptionStateCopyWith(
          CodeRedemptionState value, $Res Function(CodeRedemptionState) then) =
      _$CodeRedemptionStateCopyWithImpl<$Res, CodeRedemptionState>;
  @useResult
  $Res call({PageState pageStatus, String? code});

  $PageStateCopyWith<$Res> get pageStatus;
}

/// @nodoc
class _$CodeRedemptionStateCopyWithImpl<$Res, $Val extends CodeRedemptionState>
    implements $CodeRedemptionStateCopyWith<$Res> {
  _$CodeRedemptionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageStatus = null,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      pageStatus: null == pageStatus
          ? _value.pageStatus
          : pageStatus // ignore: cast_nullable_to_non_nullable
              as PageState,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
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
abstract class _$$CodeRedemptionStateImplCopyWith<$Res>
    implements $CodeRedemptionStateCopyWith<$Res> {
  factory _$$CodeRedemptionStateImplCopyWith(_$CodeRedemptionStateImpl value,
          $Res Function(_$CodeRedemptionStateImpl) then) =
      __$$CodeRedemptionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PageState pageStatus, String? code});

  @override
  $PageStateCopyWith<$Res> get pageStatus;
}

/// @nodoc
class __$$CodeRedemptionStateImplCopyWithImpl<$Res>
    extends _$CodeRedemptionStateCopyWithImpl<$Res, _$CodeRedemptionStateImpl>
    implements _$$CodeRedemptionStateImplCopyWith<$Res> {
  __$$CodeRedemptionStateImplCopyWithImpl(_$CodeRedemptionStateImpl _value,
      $Res Function(_$CodeRedemptionStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageStatus = null,
    Object? code = freezed,
  }) {
    return _then(_$CodeRedemptionStateImpl(
      pageStatus: null == pageStatus
          ? _value.pageStatus
          : pageStatus // ignore: cast_nullable_to_non_nullable
              as PageState,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CodeRedemptionStateImpl implements _CodeRedemptionState {
  const _$CodeRedemptionStateImpl(
      {this.pageStatus = const PageState.initial(), this.code});

  @override
  @JsonKey()
  final PageState pageStatus;
  @override
  final String? code;

  @override
  String toString() {
    return 'CodeRedemptionState(pageStatus: $pageStatus, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CodeRedemptionStateImpl &&
            (identical(other.pageStatus, pageStatus) ||
                other.pageStatus == pageStatus) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageStatus, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CodeRedemptionStateImplCopyWith<_$CodeRedemptionStateImpl> get copyWith =>
      __$$CodeRedemptionStateImplCopyWithImpl<_$CodeRedemptionStateImpl>(
          this, _$identity);
}

abstract class _CodeRedemptionState implements CodeRedemptionState {
  const factory _CodeRedemptionState(
      {final PageState pageStatus,
      final String? code}) = _$CodeRedemptionStateImpl;

  @override
  PageState get pageStatus;
  @override
  String? get code;
  @override
  @JsonKey(ignore: true)
  _$$CodeRedemptionStateImplCopyWith<_$CodeRedemptionStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
