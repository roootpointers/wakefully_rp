// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basic_dream_decoder_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BasicDreamDecoderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(DreamType dreamType) dreamTypeSelected,
    required TResult Function(String dreamSubType) dreamSubTypeSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(DreamType dreamType)? dreamTypeSelected,
    TResult? Function(String dreamSubType)? dreamSubTypeSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(DreamType dreamType)? dreamTypeSelected,
    TResult Function(String dreamSubType)? dreamSubTypeSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_DreamTypeSelected value) dreamTypeSelected,
    required TResult Function(_DreamSubTypeSelected value) dreamSubTypeSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_DreamTypeSelected value)? dreamTypeSelected,
    TResult? Function(_DreamSubTypeSelected value)? dreamSubTypeSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DreamTypeSelected value)? dreamTypeSelected,
    TResult Function(_DreamSubTypeSelected value)? dreamSubTypeSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasicDreamDecoderEventCopyWith<$Res> {
  factory $BasicDreamDecoderEventCopyWith(BasicDreamDecoderEvent value,
          $Res Function(BasicDreamDecoderEvent) then) =
      _$BasicDreamDecoderEventCopyWithImpl<$Res, BasicDreamDecoderEvent>;
}

/// @nodoc
class _$BasicDreamDecoderEventCopyWithImpl<$Res,
        $Val extends BasicDreamDecoderEvent>
    implements $BasicDreamDecoderEventCopyWith<$Res> {
  _$BasicDreamDecoderEventCopyWithImpl(this._value, this._then);

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
    extends _$BasicDreamDecoderEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'BasicDreamDecoderEvent.started()';
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
    required TResult Function(DreamType dreamType) dreamTypeSelected,
    required TResult Function(String dreamSubType) dreamSubTypeSelected,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(DreamType dreamType)? dreamTypeSelected,
    TResult? Function(String dreamSubType)? dreamSubTypeSelected,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(DreamType dreamType)? dreamTypeSelected,
    TResult Function(String dreamSubType)? dreamSubTypeSelected,
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
    required TResult Function(_DreamTypeSelected value) dreamTypeSelected,
    required TResult Function(_DreamSubTypeSelected value) dreamSubTypeSelected,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_DreamTypeSelected value)? dreamTypeSelected,
    TResult? Function(_DreamSubTypeSelected value)? dreamSubTypeSelected,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DreamTypeSelected value)? dreamTypeSelected,
    TResult Function(_DreamSubTypeSelected value)? dreamSubTypeSelected,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements BasicDreamDecoderEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$DreamTypeSelectedImplCopyWith<$Res> {
  factory _$$DreamTypeSelectedImplCopyWith(_$DreamTypeSelectedImpl value,
          $Res Function(_$DreamTypeSelectedImpl) then) =
      __$$DreamTypeSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DreamType dreamType});

  $DreamTypeCopyWith<$Res> get dreamType;
}

/// @nodoc
class __$$DreamTypeSelectedImplCopyWithImpl<$Res>
    extends _$BasicDreamDecoderEventCopyWithImpl<$Res, _$DreamTypeSelectedImpl>
    implements _$$DreamTypeSelectedImplCopyWith<$Res> {
  __$$DreamTypeSelectedImplCopyWithImpl(_$DreamTypeSelectedImpl _value,
      $Res Function(_$DreamTypeSelectedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dreamType = null,
  }) {
    return _then(_$DreamTypeSelectedImpl(
      null == dreamType
          ? _value.dreamType
          : dreamType // ignore: cast_nullable_to_non_nullable
              as DreamType,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DreamTypeCopyWith<$Res> get dreamType {
    return $DreamTypeCopyWith<$Res>(_value.dreamType, (value) {
      return _then(_value.copyWith(dreamType: value));
    });
  }
}

/// @nodoc

class _$DreamTypeSelectedImpl implements _DreamTypeSelected {
  const _$DreamTypeSelectedImpl(this.dreamType);

  @override
  final DreamType dreamType;

  @override
  String toString() {
    return 'BasicDreamDecoderEvent.dreamTypeSelected(dreamType: $dreamType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DreamTypeSelectedImpl &&
            (identical(other.dreamType, dreamType) ||
                other.dreamType == dreamType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dreamType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DreamTypeSelectedImplCopyWith<_$DreamTypeSelectedImpl> get copyWith =>
      __$$DreamTypeSelectedImplCopyWithImpl<_$DreamTypeSelectedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(DreamType dreamType) dreamTypeSelected,
    required TResult Function(String dreamSubType) dreamSubTypeSelected,
  }) {
    return dreamTypeSelected(dreamType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(DreamType dreamType)? dreamTypeSelected,
    TResult? Function(String dreamSubType)? dreamSubTypeSelected,
  }) {
    return dreamTypeSelected?.call(dreamType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(DreamType dreamType)? dreamTypeSelected,
    TResult Function(String dreamSubType)? dreamSubTypeSelected,
    required TResult orElse(),
  }) {
    if (dreamTypeSelected != null) {
      return dreamTypeSelected(dreamType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_DreamTypeSelected value) dreamTypeSelected,
    required TResult Function(_DreamSubTypeSelected value) dreamSubTypeSelected,
  }) {
    return dreamTypeSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_DreamTypeSelected value)? dreamTypeSelected,
    TResult? Function(_DreamSubTypeSelected value)? dreamSubTypeSelected,
  }) {
    return dreamTypeSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DreamTypeSelected value)? dreamTypeSelected,
    TResult Function(_DreamSubTypeSelected value)? dreamSubTypeSelected,
    required TResult orElse(),
  }) {
    if (dreamTypeSelected != null) {
      return dreamTypeSelected(this);
    }
    return orElse();
  }
}

abstract class _DreamTypeSelected implements BasicDreamDecoderEvent {
  const factory _DreamTypeSelected(final DreamType dreamType) =
      _$DreamTypeSelectedImpl;

  DreamType get dreamType;
  @JsonKey(ignore: true)
  _$$DreamTypeSelectedImplCopyWith<_$DreamTypeSelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DreamSubTypeSelectedImplCopyWith<$Res> {
  factory _$$DreamSubTypeSelectedImplCopyWith(_$DreamSubTypeSelectedImpl value,
          $Res Function(_$DreamSubTypeSelectedImpl) then) =
      __$$DreamSubTypeSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String dreamSubType});
}

/// @nodoc
class __$$DreamSubTypeSelectedImplCopyWithImpl<$Res>
    extends _$BasicDreamDecoderEventCopyWithImpl<$Res,
        _$DreamSubTypeSelectedImpl>
    implements _$$DreamSubTypeSelectedImplCopyWith<$Res> {
  __$$DreamSubTypeSelectedImplCopyWithImpl(_$DreamSubTypeSelectedImpl _value,
      $Res Function(_$DreamSubTypeSelectedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dreamSubType = null,
  }) {
    return _then(_$DreamSubTypeSelectedImpl(
      null == dreamSubType
          ? _value.dreamSubType
          : dreamSubType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DreamSubTypeSelectedImpl implements _DreamSubTypeSelected {
  const _$DreamSubTypeSelectedImpl(this.dreamSubType);

  @override
  final String dreamSubType;

  @override
  String toString() {
    return 'BasicDreamDecoderEvent.dreamSubTypeSelected(dreamSubType: $dreamSubType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DreamSubTypeSelectedImpl &&
            (identical(other.dreamSubType, dreamSubType) ||
                other.dreamSubType == dreamSubType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dreamSubType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DreamSubTypeSelectedImplCopyWith<_$DreamSubTypeSelectedImpl>
      get copyWith =>
          __$$DreamSubTypeSelectedImplCopyWithImpl<_$DreamSubTypeSelectedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(DreamType dreamType) dreamTypeSelected,
    required TResult Function(String dreamSubType) dreamSubTypeSelected,
  }) {
    return dreamSubTypeSelected(dreamSubType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(DreamType dreamType)? dreamTypeSelected,
    TResult? Function(String dreamSubType)? dreamSubTypeSelected,
  }) {
    return dreamSubTypeSelected?.call(dreamSubType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(DreamType dreamType)? dreamTypeSelected,
    TResult Function(String dreamSubType)? dreamSubTypeSelected,
    required TResult orElse(),
  }) {
    if (dreamSubTypeSelected != null) {
      return dreamSubTypeSelected(dreamSubType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_DreamTypeSelected value) dreamTypeSelected,
    required TResult Function(_DreamSubTypeSelected value) dreamSubTypeSelected,
  }) {
    return dreamSubTypeSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_DreamTypeSelected value)? dreamTypeSelected,
    TResult? Function(_DreamSubTypeSelected value)? dreamSubTypeSelected,
  }) {
    return dreamSubTypeSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DreamTypeSelected value)? dreamTypeSelected,
    TResult Function(_DreamSubTypeSelected value)? dreamSubTypeSelected,
    required TResult orElse(),
  }) {
    if (dreamSubTypeSelected != null) {
      return dreamSubTypeSelected(this);
    }
    return orElse();
  }
}

abstract class _DreamSubTypeSelected implements BasicDreamDecoderEvent {
  const factory _DreamSubTypeSelected(final String dreamSubType) =
      _$DreamSubTypeSelectedImpl;

  String get dreamSubType;
  @JsonKey(ignore: true)
  _$$DreamSubTypeSelectedImplCopyWith<_$DreamSubTypeSelectedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BasicDreamDecoderState {
  List<DreamType> get dreamTypes => throw _privateConstructorUsedError;
  DreamType? get selectedDreamType => throw _privateConstructorUsedError;
  String? get selectedDreamSubType => throw _privateConstructorUsedError;
  PageState get pageStatus => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BasicDreamDecoderStateCopyWith<BasicDreamDecoderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasicDreamDecoderStateCopyWith<$Res> {
  factory $BasicDreamDecoderStateCopyWith(BasicDreamDecoderState value,
          $Res Function(BasicDreamDecoderState) then) =
      _$BasicDreamDecoderStateCopyWithImpl<$Res, BasicDreamDecoderState>;
  @useResult
  $Res call(
      {List<DreamType> dreamTypes,
      DreamType? selectedDreamType,
      String? selectedDreamSubType,
      PageState pageStatus,
      String? message});

  $DreamTypeCopyWith<$Res>? get selectedDreamType;
  $PageStateCopyWith<$Res> get pageStatus;
}

/// @nodoc
class _$BasicDreamDecoderStateCopyWithImpl<$Res,
        $Val extends BasicDreamDecoderState>
    implements $BasicDreamDecoderStateCopyWith<$Res> {
  _$BasicDreamDecoderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dreamTypes = null,
    Object? selectedDreamType = freezed,
    Object? selectedDreamSubType = freezed,
    Object? pageStatus = null,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      dreamTypes: null == dreamTypes
          ? _value.dreamTypes
          : dreamTypes // ignore: cast_nullable_to_non_nullable
              as List<DreamType>,
      selectedDreamType: freezed == selectedDreamType
          ? _value.selectedDreamType
          : selectedDreamType // ignore: cast_nullable_to_non_nullable
              as DreamType?,
      selectedDreamSubType: freezed == selectedDreamSubType
          ? _value.selectedDreamSubType
          : selectedDreamSubType // ignore: cast_nullable_to_non_nullable
              as String?,
      pageStatus: null == pageStatus
          ? _value.pageStatus
          : pageStatus // ignore: cast_nullable_to_non_nullable
              as PageState,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DreamTypeCopyWith<$Res>? get selectedDreamType {
    if (_value.selectedDreamType == null) {
      return null;
    }

    return $DreamTypeCopyWith<$Res>(_value.selectedDreamType!, (value) {
      return _then(_value.copyWith(selectedDreamType: value) as $Val);
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
abstract class _$$BasicDreamDecoderStateImplCopyWith<$Res>
    implements $BasicDreamDecoderStateCopyWith<$Res> {
  factory _$$BasicDreamDecoderStateImplCopyWith(
          _$BasicDreamDecoderStateImpl value,
          $Res Function(_$BasicDreamDecoderStateImpl) then) =
      __$$BasicDreamDecoderStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<DreamType> dreamTypes,
      DreamType? selectedDreamType,
      String? selectedDreamSubType,
      PageState pageStatus,
      String? message});

  @override
  $DreamTypeCopyWith<$Res>? get selectedDreamType;
  @override
  $PageStateCopyWith<$Res> get pageStatus;
}

/// @nodoc
class __$$BasicDreamDecoderStateImplCopyWithImpl<$Res>
    extends _$BasicDreamDecoderStateCopyWithImpl<$Res,
        _$BasicDreamDecoderStateImpl>
    implements _$$BasicDreamDecoderStateImplCopyWith<$Res> {
  __$$BasicDreamDecoderStateImplCopyWithImpl(
      _$BasicDreamDecoderStateImpl _value,
      $Res Function(_$BasicDreamDecoderStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dreamTypes = null,
    Object? selectedDreamType = freezed,
    Object? selectedDreamSubType = freezed,
    Object? pageStatus = null,
    Object? message = freezed,
  }) {
    return _then(_$BasicDreamDecoderStateImpl(
      dreamTypes: null == dreamTypes
          ? _value._dreamTypes
          : dreamTypes // ignore: cast_nullable_to_non_nullable
              as List<DreamType>,
      selectedDreamType: freezed == selectedDreamType
          ? _value.selectedDreamType
          : selectedDreamType // ignore: cast_nullable_to_non_nullable
              as DreamType?,
      selectedDreamSubType: freezed == selectedDreamSubType
          ? _value.selectedDreamSubType
          : selectedDreamSubType // ignore: cast_nullable_to_non_nullable
              as String?,
      pageStatus: null == pageStatus
          ? _value.pageStatus
          : pageStatus // ignore: cast_nullable_to_non_nullable
              as PageState,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$BasicDreamDecoderStateImpl implements _BasicDreamDecoderState {
  const _$BasicDreamDecoderStateImpl(
      {final List<DreamType> dreamTypes = const [],
      this.selectedDreamType,
      this.selectedDreamSubType,
      this.pageStatus = const PageState.initial(),
      this.message})
      : _dreamTypes = dreamTypes;

  final List<DreamType> _dreamTypes;
  @override
  @JsonKey()
  List<DreamType> get dreamTypes {
    if (_dreamTypes is EqualUnmodifiableListView) return _dreamTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dreamTypes);
  }

  @override
  final DreamType? selectedDreamType;
  @override
  final String? selectedDreamSubType;
  @override
  @JsonKey()
  final PageState pageStatus;
  @override
  final String? message;

  @override
  String toString() {
    return 'BasicDreamDecoderState(dreamTypes: $dreamTypes, selectedDreamType: $selectedDreamType, selectedDreamSubType: $selectedDreamSubType, pageStatus: $pageStatus, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BasicDreamDecoderStateImpl &&
            const DeepCollectionEquality()
                .equals(other._dreamTypes, _dreamTypes) &&
            (identical(other.selectedDreamType, selectedDreamType) ||
                other.selectedDreamType == selectedDreamType) &&
            (identical(other.selectedDreamSubType, selectedDreamSubType) ||
                other.selectedDreamSubType == selectedDreamSubType) &&
            (identical(other.pageStatus, pageStatus) ||
                other.pageStatus == pageStatus) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_dreamTypes),
      selectedDreamType,
      selectedDreamSubType,
      pageStatus,
      message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BasicDreamDecoderStateImplCopyWith<_$BasicDreamDecoderStateImpl>
      get copyWith => __$$BasicDreamDecoderStateImplCopyWithImpl<
          _$BasicDreamDecoderStateImpl>(this, _$identity);
}

abstract class _BasicDreamDecoderState implements BasicDreamDecoderState {
  const factory _BasicDreamDecoderState(
      {final List<DreamType> dreamTypes,
      final DreamType? selectedDreamType,
      final String? selectedDreamSubType,
      final PageState pageStatus,
      final String? message}) = _$BasicDreamDecoderStateImpl;

  @override
  List<DreamType> get dreamTypes;
  @override
  DreamType? get selectedDreamType;
  @override
  String? get selectedDreamSubType;
  @override
  PageState get pageStatus;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$BasicDreamDecoderStateImplCopyWith<_$BasicDreamDecoderStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
