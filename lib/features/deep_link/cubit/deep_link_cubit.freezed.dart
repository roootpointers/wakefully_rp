// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deep_link_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DeepLinkState {
  String get result => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int? get flowId => throw _privateConstructorUsedError;
  String? get journeyId => throw _privateConstructorUsedError;
  PageState get pageStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeepLinkStateCopyWith<DeepLinkState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeepLinkStateCopyWith<$Res> {
  factory $DeepLinkStateCopyWith(
          DeepLinkState value, $Res Function(DeepLinkState) then) =
      _$DeepLinkStateCopyWithImpl<$Res, DeepLinkState>;
  @useResult
  $Res call(
      {String result,
      String title,
      int? flowId,
      String? journeyId,
      PageState pageStatus});

  $PageStateCopyWith<$Res> get pageStatus;
}

/// @nodoc
class _$DeepLinkStateCopyWithImpl<$Res, $Val extends DeepLinkState>
    implements $DeepLinkStateCopyWith<$Res> {
  _$DeepLinkStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? title = null,
    Object? flowId = freezed,
    Object? journeyId = freezed,
    Object? pageStatus = null,
  }) {
    return _then(_value.copyWith(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      flowId: freezed == flowId
          ? _value.flowId
          : flowId // ignore: cast_nullable_to_non_nullable
              as int?,
      journeyId: freezed == journeyId
          ? _value.journeyId
          : journeyId // ignore: cast_nullable_to_non_nullable
              as String?,
      pageStatus: null == pageStatus
          ? _value.pageStatus
          : pageStatus // ignore: cast_nullable_to_non_nullable
              as PageState,
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
abstract class _$$DeepLinkStateImplCopyWith<$Res>
    implements $DeepLinkStateCopyWith<$Res> {
  factory _$$DeepLinkStateImplCopyWith(
          _$DeepLinkStateImpl value, $Res Function(_$DeepLinkStateImpl) then) =
      __$$DeepLinkStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String result,
      String title,
      int? flowId,
      String? journeyId,
      PageState pageStatus});

  @override
  $PageStateCopyWith<$Res> get pageStatus;
}

/// @nodoc
class __$$DeepLinkStateImplCopyWithImpl<$Res>
    extends _$DeepLinkStateCopyWithImpl<$Res, _$DeepLinkStateImpl>
    implements _$$DeepLinkStateImplCopyWith<$Res> {
  __$$DeepLinkStateImplCopyWithImpl(
      _$DeepLinkStateImpl _value, $Res Function(_$DeepLinkStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? title = null,
    Object? flowId = freezed,
    Object? journeyId = freezed,
    Object? pageStatus = null,
  }) {
    return _then(_$DeepLinkStateImpl(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      flowId: freezed == flowId
          ? _value.flowId
          : flowId // ignore: cast_nullable_to_non_nullable
              as int?,
      journeyId: freezed == journeyId
          ? _value.journeyId
          : journeyId // ignore: cast_nullable_to_non_nullable
              as String?,
      pageStatus: null == pageStatus
          ? _value.pageStatus
          : pageStatus // ignore: cast_nullable_to_non_nullable
              as PageState,
    ));
  }
}

/// @nodoc

class _$DeepLinkStateImpl implements _DeepLinkState {
  const _$DeepLinkStateImpl(
      {this.result = "",
      this.title = "Wakefully",
      this.flowId,
      this.journeyId,
      this.pageStatus = const PageState.initial()});

  @override
  @JsonKey()
  final String result;
  @override
  @JsonKey()
  final String title;
  @override
  final int? flowId;
  @override
  final String? journeyId;
  @override
  @JsonKey()
  final PageState pageStatus;

  @override
  String toString() {
    return 'DeepLinkState(result: $result, title: $title, flowId: $flowId, journeyId: $journeyId, pageStatus: $pageStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeepLinkStateImpl &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.flowId, flowId) || other.flowId == flowId) &&
            (identical(other.journeyId, journeyId) ||
                other.journeyId == journeyId) &&
            (identical(other.pageStatus, pageStatus) ||
                other.pageStatus == pageStatus));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, result, title, flowId, journeyId, pageStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeepLinkStateImplCopyWith<_$DeepLinkStateImpl> get copyWith =>
      __$$DeepLinkStateImplCopyWithImpl<_$DeepLinkStateImpl>(this, _$identity);
}

abstract class _DeepLinkState implements DeepLinkState {
  const factory _DeepLinkState(
      {final String result,
      final String title,
      final int? flowId,
      final String? journeyId,
      final PageState pageStatus}) = _$DeepLinkStateImpl;

  @override
  String get result;
  @override
  String get title;
  @override
  int? get flowId;
  @override
  String? get journeyId;
  @override
  PageState get pageStatus;
  @override
  @JsonKey(ignore: true)
  _$$DeepLinkStateImplCopyWith<_$DeepLinkStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
