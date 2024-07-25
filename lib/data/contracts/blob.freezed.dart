// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blob.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Blob _$BlobFromJson(Map<String, dynamic> json) {
  return _Blob.fromJson(json);
}

/// @nodoc
mixin _$Blob {
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  DateTime get created => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BlobCopyWith<Blob> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlobCopyWith<$Res> {
  factory $BlobCopyWith(Blob value, $Res Function(Blob) then) =
      _$BlobCopyWithImpl<$Res, Blob>;
  @useResult
  $Res call({String title, String content, DateTime created});
}

/// @nodoc
class _$BlobCopyWithImpl<$Res, $Val extends Blob>
    implements $BlobCopyWith<$Res> {
  _$BlobCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? content = null,
    Object? created = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
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
abstract class _$$BlobImplCopyWith<$Res> implements $BlobCopyWith<$Res> {
  factory _$$BlobImplCopyWith(
          _$BlobImpl value, $Res Function(_$BlobImpl) then) =
      __$$BlobImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String content, DateTime created});
}

/// @nodoc
class __$$BlobImplCopyWithImpl<$Res>
    extends _$BlobCopyWithImpl<$Res, _$BlobImpl>
    implements _$$BlobImplCopyWith<$Res> {
  __$$BlobImplCopyWithImpl(_$BlobImpl _value, $Res Function(_$BlobImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? content = null,
    Object? created = null,
  }) {
    return _then(_$BlobImpl(
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlobImpl implements _Blob {
  _$BlobImpl(this.title, this.content, this.created);

  factory _$BlobImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlobImplFromJson(json);

  @override
  final String title;
  @override
  final String content;
  @override
  final DateTime created;

  @override
  String toString() {
    return 'Blob(title: $title, content: $content, created: $created)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlobImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.created, created) || other.created == created));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, content, created);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlobImplCopyWith<_$BlobImpl> get copyWith =>
      __$$BlobImplCopyWithImpl<_$BlobImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BlobImplToJson(
      this,
    );
  }
}

abstract class _Blob implements Blob {
  factory _Blob(
          final String title, final String content, final DateTime created) =
      _$BlobImpl;

  factory _Blob.fromJson(Map<String, dynamic> json) = _$BlobImpl.fromJson;

  @override
  String get title;
  @override
  String get content;
  @override
  DateTime get created;
  @override
  @JsonKey(ignore: true)
  _$$BlobImplCopyWith<_$BlobImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
