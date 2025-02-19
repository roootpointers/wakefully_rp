// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dream.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Dream _$DreamFromJson(Map<String, dynamic> json) {
  return _Dream.fromJson(json);
}

/// @nodoc
mixin _$Dream {
  String get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  List<int> get completedFlowIds => throw _privateConstructorUsedError;
  DateTime get created => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DreamCopyWith<Dream> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DreamCopyWith<$Res> {
  factory $DreamCopyWith(Dream value, $Res Function(Dream) then) =
      _$DreamCopyWithImpl<$Res, Dream>;
  @useResult
  $Res call(
      {String id,
      String? title,
      String content,
      List<int> completedFlowIds,
      DateTime created});
}

/// @nodoc
class _$DreamCopyWithImpl<$Res, $Val extends Dream>
    implements $DreamCopyWith<$Res> {
  _$DreamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? content = null,
    Object? completedFlowIds = null,
    Object? created = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      completedFlowIds: null == completedFlowIds
          ? _value.completedFlowIds
          : completedFlowIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DreamImplCopyWith<$Res> implements $DreamCopyWith<$Res> {
  factory _$$DreamImplCopyWith(
          _$DreamImpl value, $Res Function(_$DreamImpl) then) =
      __$$DreamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? title,
      String content,
      List<int> completedFlowIds,
      DateTime created});
}

/// @nodoc
class __$$DreamImplCopyWithImpl<$Res>
    extends _$DreamCopyWithImpl<$Res, _$DreamImpl>
    implements _$$DreamImplCopyWith<$Res> {
  __$$DreamImplCopyWithImpl(
      _$DreamImpl _value, $Res Function(_$DreamImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? content = null,
    Object? completedFlowIds = null,
    Object? created = null,
  }) {
    return _then(_$DreamImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      completedFlowIds: null == completedFlowIds
          ? _value._completedFlowIds
          : completedFlowIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DreamImpl implements _Dream {
  _$DreamImpl(
      {required this.id,
      this.title,
      required this.content,
      final List<int> completedFlowIds = const [],
      required this.created})
      : _completedFlowIds = completedFlowIds;

  factory _$DreamImpl.fromJson(Map<String, dynamic> json) =>
      _$$DreamImplFromJson(json);

  @override
  final String id;
  @override
  final String? title;
  @override
  final String content;
  final List<int> _completedFlowIds;
  @override
  @JsonKey()
  List<int> get completedFlowIds {
    if (_completedFlowIds is EqualUnmodifiableListView)
      return _completedFlowIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_completedFlowIds);
  }

  @override
  final DateTime created;

  @override
  String toString() {
    return 'Dream(id: $id, title: $title, content: $content, completedFlowIds: $completedFlowIds, created: $created)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DreamImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            const DeepCollectionEquality()
                .equals(other._completedFlowIds, _completedFlowIds) &&
            (identical(other.created, created) || other.created == created));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, content,
      const DeepCollectionEquality().hash(_completedFlowIds), created);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DreamImplCopyWith<_$DreamImpl> get copyWith =>
      __$$DreamImplCopyWithImpl<_$DreamImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DreamImplToJson(
      this,
    );
  }
}

abstract class _Dream implements Dream {
  factory _Dream(
      {required final String id,
      final String? title,
      required final String content,
      final List<int> completedFlowIds,
      required final DateTime created}) = _$DreamImpl;

  factory _Dream.fromJson(Map<String, dynamic> json) = _$DreamImpl.fromJson;

  @override
  String get id;
  @override
  String? get title;
  @override
  String get content;
  @override
  List<int> get completedFlowIds;
  @override
  DateTime get created;
  @override
  @JsonKey(ignore: true)
  _$$DreamImplCopyWith<_$DreamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
