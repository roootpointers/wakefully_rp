// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'choice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Choice _$ChoiceFromJson(Map<String, dynamic> json) {
  return _Choice.fromJson(json);
}

/// @nodoc
mixin _$Choice {
  String get name => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  bool get showProcessing => throw _privateConstructorUsedError;
  bool get showKeyboard => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChoiceCopyWith<Choice> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChoiceCopyWith<$Res> {
  factory $ChoiceCopyWith(Choice value, $Res Function(Choice) then) =
      _$ChoiceCopyWithImpl<$Res, Choice>;
  @useResult
  $Res call(
      {String name, String value, bool showProcessing, bool showKeyboard});
}

/// @nodoc
class _$ChoiceCopyWithImpl<$Res, $Val extends Choice>
    implements $ChoiceCopyWith<$Res> {
  _$ChoiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? value = null,
    Object? showProcessing = null,
    Object? showKeyboard = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      showProcessing: null == showProcessing
          ? _value.showProcessing
          : showProcessing // ignore: cast_nullable_to_non_nullable
              as bool,
      showKeyboard: null == showKeyboard
          ? _value.showKeyboard
          : showKeyboard // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChoiceImplCopyWith<$Res> implements $ChoiceCopyWith<$Res> {
  factory _$$ChoiceImplCopyWith(
          _$ChoiceImpl value, $Res Function(_$ChoiceImpl) then) =
      __$$ChoiceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name, String value, bool showProcessing, bool showKeyboard});
}

/// @nodoc
class __$$ChoiceImplCopyWithImpl<$Res>
    extends _$ChoiceCopyWithImpl<$Res, _$ChoiceImpl>
    implements _$$ChoiceImplCopyWith<$Res> {
  __$$ChoiceImplCopyWithImpl(
      _$ChoiceImpl _value, $Res Function(_$ChoiceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? value = null,
    Object? showProcessing = null,
    Object? showKeyboard = null,
  }) {
    return _then(_$ChoiceImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      showProcessing: null == showProcessing
          ? _value.showProcessing
          : showProcessing // ignore: cast_nullable_to_non_nullable
              as bool,
      showKeyboard: null == showKeyboard
          ? _value.showKeyboard
          : showKeyboard // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChoiceImpl implements _Choice {
  _$ChoiceImpl(
      {required this.name,
      required this.value,
      required this.showProcessing,
      required this.showKeyboard});

  factory _$ChoiceImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChoiceImplFromJson(json);

  @override
  final String name;
  @override
  final String value;
  @override
  final bool showProcessing;
  @override
  final bool showKeyboard;

  @override
  String toString() {
    return 'Choice(name: $name, value: $value, showProcessing: $showProcessing, showKeyboard: $showKeyboard)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChoiceImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.showProcessing, showProcessing) ||
                other.showProcessing == showProcessing) &&
            (identical(other.showKeyboard, showKeyboard) ||
                other.showKeyboard == showKeyboard));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, value, showProcessing, showKeyboard);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChoiceImplCopyWith<_$ChoiceImpl> get copyWith =>
      __$$ChoiceImplCopyWithImpl<_$ChoiceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChoiceImplToJson(
      this,
    );
  }
}

abstract class _Choice implements Choice {
  factory _Choice(
      {required final String name,
      required final String value,
      required final bool showProcessing,
      required final bool showKeyboard}) = _$ChoiceImpl;

  factory _Choice.fromJson(Map<String, dynamic> json) = _$ChoiceImpl.fromJson;

  @override
  String get name;
  @override
  String get value;
  @override
  bool get showProcessing;
  @override
  bool get showKeyboard;
  @override
  @JsonKey(ignore: true)
  _$$ChoiceImplCopyWith<_$ChoiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
