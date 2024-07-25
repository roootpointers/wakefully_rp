// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'script_flip.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ScriptFlip _$ScriptFlipFromJson(Map<String, dynamic> json) {
  return _ScriptFlip.fromJson(json);
}

/// @nodoc
mixin _$ScriptFlip {
  String get journeyId => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  DateTime get created => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScriptFlipCopyWith<ScriptFlip> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScriptFlipCopyWith<$Res> {
  factory $ScriptFlipCopyWith(
          ScriptFlip value, $Res Function(ScriptFlip) then) =
      _$ScriptFlipCopyWithImpl<$Res, ScriptFlip>;
  @useResult
  $Res call({String journeyId, String content, DateTime created});
}

/// @nodoc
class _$ScriptFlipCopyWithImpl<$Res, $Val extends ScriptFlip>
    implements $ScriptFlipCopyWith<$Res> {
  _$ScriptFlipCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? journeyId = null,
    Object? content = null,
    Object? created = null,
  }) {
    return _then(_value.copyWith(
      journeyId: null == journeyId
          ? _value.journeyId
          : journeyId // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScriptFlipImplCopyWith<$Res>
    implements $ScriptFlipCopyWith<$Res> {
  factory _$$ScriptFlipImplCopyWith(
          _$ScriptFlipImpl value, $Res Function(_$ScriptFlipImpl) then) =
      __$$ScriptFlipImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String journeyId, String content, DateTime created});
}

/// @nodoc
class __$$ScriptFlipImplCopyWithImpl<$Res>
    extends _$ScriptFlipCopyWithImpl<$Res, _$ScriptFlipImpl>
    implements _$$ScriptFlipImplCopyWith<$Res> {
  __$$ScriptFlipImplCopyWithImpl(
      _$ScriptFlipImpl _value, $Res Function(_$ScriptFlipImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? journeyId = null,
    Object? content = null,
    Object? created = null,
  }) {
    return _then(_$ScriptFlipImpl(
      journeyId: null == journeyId
          ? _value.journeyId
          : journeyId // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScriptFlipImpl implements _ScriptFlip {
  _$ScriptFlipImpl(
      {required this.journeyId, required this.content, required this.created});

  factory _$ScriptFlipImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScriptFlipImplFromJson(json);

  @override
  final String journeyId;
  @override
  final String content;
  @override
  final DateTime created;

  @override
  String toString() {
    return 'ScriptFlip(journeyId: $journeyId, content: $content, created: $created)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScriptFlipImpl &&
            (identical(other.journeyId, journeyId) ||
                other.journeyId == journeyId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.created, created) || other.created == created));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, journeyId, content, created);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScriptFlipImplCopyWith<_$ScriptFlipImpl> get copyWith =>
      __$$ScriptFlipImplCopyWithImpl<_$ScriptFlipImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScriptFlipImplToJson(
      this,
    );
  }
}

abstract class _ScriptFlip implements ScriptFlip {
  factory _ScriptFlip(
      {required final String journeyId,
      required final String content,
      required final DateTime created}) = _$ScriptFlipImpl;

  factory _ScriptFlip.fromJson(Map<String, dynamic> json) =
      _$ScriptFlipImpl.fromJson;

  @override
  String get journeyId;
  @override
  String get content;
  @override
  DateTime get created;
  @override
  @JsonKey(ignore: true)
  _$$ScriptFlipImplCopyWith<_$ScriptFlipImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
