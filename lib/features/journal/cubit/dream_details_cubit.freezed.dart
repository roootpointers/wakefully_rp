// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dream_details_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DreamDetailsState {
  DreamDetails? get details => throw _privateConstructorUsedError;
  PageState get pageStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DreamDetailsStateCopyWith<DreamDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DreamDetailsStateCopyWith<$Res> {
  factory $DreamDetailsStateCopyWith(
          DreamDetailsState value, $Res Function(DreamDetailsState) then) =
      _$DreamDetailsStateCopyWithImpl<$Res, DreamDetailsState>;
  @useResult
  $Res call({DreamDetails? details, PageState pageStatus});

  $DreamDetailsCopyWith<$Res>? get details;
  $PageStateCopyWith<$Res> get pageStatus;
}

/// @nodoc
class _$DreamDetailsStateCopyWithImpl<$Res, $Val extends DreamDetailsState>
    implements $DreamDetailsStateCopyWith<$Res> {
  _$DreamDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? details = freezed,
    Object? pageStatus = null,
  }) {
    return _then(_value.copyWith(
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as DreamDetails?,
      pageStatus: null == pageStatus
          ? _value.pageStatus
          : pageStatus // ignore: cast_nullable_to_non_nullable
              as PageState,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DreamDetailsCopyWith<$Res>? get details {
    if (_value.details == null) {
      return null;
    }

    return $DreamDetailsCopyWith<$Res>(_value.details!, (value) {
      return _then(_value.copyWith(details: value) as $Val);
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
abstract class _$$DreamDetailsStateImplCopyWith<$Res>
    implements $DreamDetailsStateCopyWith<$Res> {
  factory _$$DreamDetailsStateImplCopyWith(_$DreamDetailsStateImpl value,
          $Res Function(_$DreamDetailsStateImpl) then) =
      __$$DreamDetailsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DreamDetails? details, PageState pageStatus});

  @override
  $DreamDetailsCopyWith<$Res>? get details;
  @override
  $PageStateCopyWith<$Res> get pageStatus;
}

/// @nodoc
class __$$DreamDetailsStateImplCopyWithImpl<$Res>
    extends _$DreamDetailsStateCopyWithImpl<$Res, _$DreamDetailsStateImpl>
    implements _$$DreamDetailsStateImplCopyWith<$Res> {
  __$$DreamDetailsStateImplCopyWithImpl(_$DreamDetailsStateImpl _value,
      $Res Function(_$DreamDetailsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? details = freezed,
    Object? pageStatus = null,
  }) {
    return _then(_$DreamDetailsStateImpl(
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as DreamDetails?,
      pageStatus: null == pageStatus
          ? _value.pageStatus
          : pageStatus // ignore: cast_nullable_to_non_nullable
              as PageState,
    ));
  }
}

/// @nodoc

class _$DreamDetailsStateImpl implements _DreamDetailsState {
  const _$DreamDetailsStateImpl(
      {this.details, this.pageStatus = const PageState.initial()});

  @override
  final DreamDetails? details;
  @override
  @JsonKey()
  final PageState pageStatus;

  @override
  String toString() {
    return 'DreamDetailsState(details: $details, pageStatus: $pageStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DreamDetailsStateImpl &&
            (identical(other.details, details) || other.details == details) &&
            (identical(other.pageStatus, pageStatus) ||
                other.pageStatus == pageStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, details, pageStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DreamDetailsStateImplCopyWith<_$DreamDetailsStateImpl> get copyWith =>
      __$$DreamDetailsStateImplCopyWithImpl<_$DreamDetailsStateImpl>(
          this, _$identity);
}

abstract class _DreamDetailsState implements DreamDetailsState {
  const factory _DreamDetailsState(
      {final DreamDetails? details,
      final PageState pageStatus}) = _$DreamDetailsStateImpl;

  @override
  DreamDetails? get details;
  @override
  PageState get pageStatus;
  @override
  @JsonKey(ignore: true)
  _$$DreamDetailsStateImplCopyWith<_$DreamDetailsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
