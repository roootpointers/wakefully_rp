// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dream_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DreamDetails _$DreamDetailsFromJson(Map<String, dynamic> json) {
  return _DreamDetails.fromJson(json);
}

/// @nodoc
mixin _$DreamDetails {
  String? get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  DateTime get created => throw _privateConstructorUsedError;
  List<FlowResult> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DreamDetailsCopyWith<DreamDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DreamDetailsCopyWith<$Res> {
  factory $DreamDetailsCopyWith(
          DreamDetails value, $Res Function(DreamDetails) then) =
      _$DreamDetailsCopyWithImpl<$Res, DreamDetails>;
  @useResult
  $Res call(
      {String? title,
      String content,
      DateTime created,
      List<FlowResult> results});
}

/// @nodoc
class _$DreamDetailsCopyWithImpl<$Res, $Val extends DreamDetails>
    implements $DreamDetailsCopyWith<$Res> {
  _$DreamDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? content = null,
    Object? created = null,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<FlowResult>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DreamDetailsImplCopyWith<$Res>
    implements $DreamDetailsCopyWith<$Res> {
  factory _$$DreamDetailsImplCopyWith(
          _$DreamDetailsImpl value, $Res Function(_$DreamDetailsImpl) then) =
      __$$DreamDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      String content,
      DateTime created,
      List<FlowResult> results});
}

/// @nodoc
class __$$DreamDetailsImplCopyWithImpl<$Res>
    extends _$DreamDetailsCopyWithImpl<$Res, _$DreamDetailsImpl>
    implements _$$DreamDetailsImplCopyWith<$Res> {
  __$$DreamDetailsImplCopyWithImpl(
      _$DreamDetailsImpl _value, $Res Function(_$DreamDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? content = null,
    Object? created = null,
    Object? results = null,
  }) {
    return _then(_$DreamDetailsImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<FlowResult>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DreamDetailsImpl implements _DreamDetails {
  _$DreamDetailsImpl(
      {this.title,
      required this.content,
      required this.created,
      final List<FlowResult> results = const []})
      : _results = results;

  factory _$DreamDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DreamDetailsImplFromJson(json);

  @override
  final String? title;
  @override
  final String content;
  @override
  final DateTime created;
  final List<FlowResult> _results;
  @override
  @JsonKey()
  List<FlowResult> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'DreamDetails(title: $title, content: $content, created: $created, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DreamDetailsImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.created, created) || other.created == created) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, content, created,
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DreamDetailsImplCopyWith<_$DreamDetailsImpl> get copyWith =>
      __$$DreamDetailsImplCopyWithImpl<_$DreamDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DreamDetailsImplToJson(
      this,
    );
  }
}

abstract class _DreamDetails implements DreamDetails {
  factory _DreamDetails(
      {final String? title,
      required final String content,
      required final DateTime created,
      final List<FlowResult> results}) = _$DreamDetailsImpl;

  factory _DreamDetails.fromJson(Map<String, dynamic> json) =
      _$DreamDetailsImpl.fromJson;

  @override
  String? get title;
  @override
  String get content;
  @override
  DateTime get created;
  @override
  List<FlowResult> get results;
  @override
  @JsonKey(ignore: true)
  _$$DreamDetailsImplCopyWith<_$DreamDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
