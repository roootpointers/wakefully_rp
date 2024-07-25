// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dream_blob.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DreamBlob {
  Blob get blob => throw _privateConstructorUsedError;
  BlobInfo get info => throw _privateConstructorUsedError;
  Offset get offset => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DreamBlobCopyWith<DreamBlob> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DreamBlobCopyWith<$Res> {
  factory $DreamBlobCopyWith(DreamBlob value, $Res Function(DreamBlob) then) =
      _$DreamBlobCopyWithImpl<$Res, DreamBlob>;
  @useResult
  $Res call({Blob blob, BlobInfo info, Offset offset});

  $BlobCopyWith<$Res> get blob;
}

/// @nodoc
class _$DreamBlobCopyWithImpl<$Res, $Val extends DreamBlob>
    implements $DreamBlobCopyWith<$Res> {
  _$DreamBlobCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blob = null,
    Object? info = null,
    Object? offset = null,
  }) {
    return _then(_value.copyWith(
      blob: null == blob
          ? _value.blob
          : blob // ignore: cast_nullable_to_non_nullable
              as Blob,
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as BlobInfo,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as Offset,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BlobCopyWith<$Res> get blob {
    return $BlobCopyWith<$Res>(_value.blob, (value) {
      return _then(_value.copyWith(blob: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DreamBlobImplCopyWith<$Res>
    implements $DreamBlobCopyWith<$Res> {
  factory _$$DreamBlobImplCopyWith(
          _$DreamBlobImpl value, $Res Function(_$DreamBlobImpl) then) =
      __$$DreamBlobImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Blob blob, BlobInfo info, Offset offset});

  @override
  $BlobCopyWith<$Res> get blob;
}

/// @nodoc
class __$$DreamBlobImplCopyWithImpl<$Res>
    extends _$DreamBlobCopyWithImpl<$Res, _$DreamBlobImpl>
    implements _$$DreamBlobImplCopyWith<$Res> {
  __$$DreamBlobImplCopyWithImpl(
      _$DreamBlobImpl _value, $Res Function(_$DreamBlobImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blob = null,
    Object? info = null,
    Object? offset = null,
  }) {
    return _then(_$DreamBlobImpl(
      blob: null == blob
          ? _value.blob
          : blob // ignore: cast_nullable_to_non_nullable
              as Blob,
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as BlobInfo,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as Offset,
    ));
  }
}

/// @nodoc

class _$DreamBlobImpl implements _DreamBlob {
  _$DreamBlobImpl(
      {required this.blob, required this.info, this.offset = Offset.zero});

  @override
  final Blob blob;
  @override
  final BlobInfo info;
  @override
  @JsonKey()
  final Offset offset;

  @override
  String toString() {
    return 'DreamBlob(blob: $blob, info: $info, offset: $offset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DreamBlobImpl &&
            (identical(other.blob, blob) || other.blob == blob) &&
            (identical(other.info, info) || other.info == info) &&
            (identical(other.offset, offset) || other.offset == offset));
  }

  @override
  int get hashCode => Object.hash(runtimeType, blob, info, offset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DreamBlobImplCopyWith<_$DreamBlobImpl> get copyWith =>
      __$$DreamBlobImplCopyWithImpl<_$DreamBlobImpl>(this, _$identity);
}

abstract class _DreamBlob implements DreamBlob {
  factory _DreamBlob(
      {required final Blob blob,
      required final BlobInfo info,
      final Offset offset}) = _$DreamBlobImpl;

  @override
  Blob get blob;
  @override
  BlobInfo get info;
  @override
  Offset get offset;
  @override
  @JsonKey(ignore: true)
  _$$DreamBlobImplCopyWith<_$DreamBlobImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
