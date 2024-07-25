// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Message _$MessageFromJson(Map<String, dynamic> json) {
  return _Message.fromJson(json);
}

/// @nodoc
mixin _$Message {
  String? get content => throw _privateConstructorUsedError;
  String? get subContent => throw _privateConstructorUsedError;
  String get sender => throw _privateConstructorUsedError;
  List<Choice>? get choices => throw _privateConstructorUsedError;
  bool get shouldHaveChoices => throw _privateConstructorUsedError;
  bool get allowTextInput => throw _privateConstructorUsedError;
  String? get responseParameter => throw _privateConstructorUsedError;
  String? get selectedChoice => throw _privateConstructorUsedError;
  bool get disableChoices => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageCopyWith<Message> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageCopyWith<$Res> {
  factory $MessageCopyWith(Message value, $Res Function(Message) then) =
      _$MessageCopyWithImpl<$Res, Message>;
  @useResult
  $Res call(
      {String? content,
      String? subContent,
      String sender,
      List<Choice>? choices,
      bool shouldHaveChoices,
      bool allowTextInput,
      String? responseParameter,
      String? selectedChoice,
      bool disableChoices});
}

/// @nodoc
class _$MessageCopyWithImpl<$Res, $Val extends Message>
    implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = freezed,
    Object? subContent = freezed,
    Object? sender = null,
    Object? choices = freezed,
    Object? shouldHaveChoices = null,
    Object? allowTextInput = null,
    Object? responseParameter = freezed,
    Object? selectedChoice = freezed,
    Object? disableChoices = null,
  }) {
    return _then(_value.copyWith(
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      subContent: freezed == subContent
          ? _value.subContent
          : subContent // ignore: cast_nullable_to_non_nullable
              as String?,
      sender: null == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as String,
      choices: freezed == choices
          ? _value.choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<Choice>?,
      shouldHaveChoices: null == shouldHaveChoices
          ? _value.shouldHaveChoices
          : shouldHaveChoices // ignore: cast_nullable_to_non_nullable
              as bool,
      allowTextInput: null == allowTextInput
          ? _value.allowTextInput
          : allowTextInput // ignore: cast_nullable_to_non_nullable
              as bool,
      responseParameter: freezed == responseParameter
          ? _value.responseParameter
          : responseParameter // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedChoice: freezed == selectedChoice
          ? _value.selectedChoice
          : selectedChoice // ignore: cast_nullable_to_non_nullable
              as String?,
      disableChoices: null == disableChoices
          ? _value.disableChoices
          : disableChoices // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageImplCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$$MessageImplCopyWith(
          _$MessageImpl value, $Res Function(_$MessageImpl) then) =
      __$$MessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? content,
      String? subContent,
      String sender,
      List<Choice>? choices,
      bool shouldHaveChoices,
      bool allowTextInput,
      String? responseParameter,
      String? selectedChoice,
      bool disableChoices});
}

/// @nodoc
class __$$MessageImplCopyWithImpl<$Res>
    extends _$MessageCopyWithImpl<$Res, _$MessageImpl>
    implements _$$MessageImplCopyWith<$Res> {
  __$$MessageImplCopyWithImpl(
      _$MessageImpl _value, $Res Function(_$MessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = freezed,
    Object? subContent = freezed,
    Object? sender = null,
    Object? choices = freezed,
    Object? shouldHaveChoices = null,
    Object? allowTextInput = null,
    Object? responseParameter = freezed,
    Object? selectedChoice = freezed,
    Object? disableChoices = null,
  }) {
    return _then(_$MessageImpl(
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      subContent: freezed == subContent
          ? _value.subContent
          : subContent // ignore: cast_nullable_to_non_nullable
              as String?,
      sender: null == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as String,
      choices: freezed == choices
          ? _value._choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<Choice>?,
      shouldHaveChoices: null == shouldHaveChoices
          ? _value.shouldHaveChoices
          : shouldHaveChoices // ignore: cast_nullable_to_non_nullable
              as bool,
      allowTextInput: null == allowTextInput
          ? _value.allowTextInput
          : allowTextInput // ignore: cast_nullable_to_non_nullable
              as bool,
      responseParameter: freezed == responseParameter
          ? _value.responseParameter
          : responseParameter // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedChoice: freezed == selectedChoice
          ? _value.selectedChoice
          : selectedChoice // ignore: cast_nullable_to_non_nullable
              as String?,
      disableChoices: null == disableChoices
          ? _value.disableChoices
          : disableChoices // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageImpl implements _Message {
  _$MessageImpl(
      {this.content,
      this.subContent,
      required this.sender,
      final List<Choice>? choices,
      required this.shouldHaveChoices,
      required this.allowTextInput,
      this.responseParameter,
      this.selectedChoice,
      this.disableChoices = false})
      : _choices = choices;

  factory _$MessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageImplFromJson(json);

  @override
  final String? content;
  @override
  final String? subContent;
  @override
  final String sender;
  final List<Choice>? _choices;
  @override
  List<Choice>? get choices {
    final value = _choices;
    if (value == null) return null;
    if (_choices is EqualUnmodifiableListView) return _choices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool shouldHaveChoices;
  @override
  final bool allowTextInput;
  @override
  final String? responseParameter;
  @override
  final String? selectedChoice;
  @override
  @JsonKey()
  final bool disableChoices;

  @override
  String toString() {
    return 'Message(content: $content, subContent: $subContent, sender: $sender, choices: $choices, shouldHaveChoices: $shouldHaveChoices, allowTextInput: $allowTextInput, responseParameter: $responseParameter, selectedChoice: $selectedChoice, disableChoices: $disableChoices)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageImpl &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.subContent, subContent) ||
                other.subContent == subContent) &&
            (identical(other.sender, sender) || other.sender == sender) &&
            const DeepCollectionEquality().equals(other._choices, _choices) &&
            (identical(other.shouldHaveChoices, shouldHaveChoices) ||
                other.shouldHaveChoices == shouldHaveChoices) &&
            (identical(other.allowTextInput, allowTextInput) ||
                other.allowTextInput == allowTextInput) &&
            (identical(other.responseParameter, responseParameter) ||
                other.responseParameter == responseParameter) &&
            (identical(other.selectedChoice, selectedChoice) ||
                other.selectedChoice == selectedChoice) &&
            (identical(other.disableChoices, disableChoices) ||
                other.disableChoices == disableChoices));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      content,
      subContent,
      sender,
      const DeepCollectionEquality().hash(_choices),
      shouldHaveChoices,
      allowTextInput,
      responseParameter,
      selectedChoice,
      disableChoices);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageImplCopyWith<_$MessageImpl> get copyWith =>
      __$$MessageImplCopyWithImpl<_$MessageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageImplToJson(
      this,
    );
  }
}

abstract class _Message implements Message {
  factory _Message(
      {final String? content,
      final String? subContent,
      required final String sender,
      final List<Choice>? choices,
      required final bool shouldHaveChoices,
      required final bool allowTextInput,
      final String? responseParameter,
      final String? selectedChoice,
      final bool disableChoices}) = _$MessageImpl;

  factory _Message.fromJson(Map<String, dynamic> json) = _$MessageImpl.fromJson;

  @override
  String? get content;
  @override
  String? get subContent;
  @override
  String get sender;
  @override
  List<Choice>? get choices;
  @override
  bool get shouldHaveChoices;
  @override
  bool get allowTextInput;
  @override
  String? get responseParameter;
  @override
  String? get selectedChoice;
  @override
  bool get disableChoices;
  @override
  @JsonKey(ignore: true)
  _$$MessageImplCopyWith<_$MessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
