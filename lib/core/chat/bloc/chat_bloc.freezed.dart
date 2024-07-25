// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String idOrSlug,
            Map<String, String> parameters,
            String? initialMessage,
            String? resultsTitle,
            int? flowBlockId,
            Widget? resultsTitleChild,
            String? analyzingText)
        started,
    required TResult Function(int? id) nextFlowBlockRequested,
    required TResult Function(String key, String value) parameterAddedOrUpdated,
    required TResult Function() retry,
    required TResult Function(
            String? key, String value, bool userValue, bool showKeyboard)
        choiceMade,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String idOrSlug,
            Map<String, String> parameters,
            String? initialMessage,
            String? resultsTitle,
            int? flowBlockId,
            Widget? resultsTitleChild,
            String? analyzingText)?
        started,
    TResult? Function(int? id)? nextFlowBlockRequested,
    TResult? Function(String key, String value)? parameterAddedOrUpdated,
    TResult? Function()? retry,
    TResult? Function(
            String? key, String value, bool userValue, bool showKeyboard)?
        choiceMade,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String idOrSlug,
            Map<String, String> parameters,
            String? initialMessage,
            String? resultsTitle,
            int? flowBlockId,
            Widget? resultsTitleChild,
            String? analyzingText)?
        started,
    TResult Function(int? id)? nextFlowBlockRequested,
    TResult Function(String key, String value)? parameterAddedOrUpdated,
    TResult Function()? retry,
    TResult Function(
            String? key, String value, bool userValue, bool showKeyboard)?
        choiceMade,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_NextFlowBlockRequested value)
        nextFlowBlockRequested,
    required TResult Function(_ParameterAddedOrUpdated value)
        parameterAddedOrUpdated,
    required TResult Function(_Retry value) retry,
    required TResult Function(_ChoiceMade value) choiceMade,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_NextFlowBlockRequested value)? nextFlowBlockRequested,
    TResult? Function(_ParameterAddedOrUpdated value)? parameterAddedOrUpdated,
    TResult? Function(_Retry value)? retry,
    TResult? Function(_ChoiceMade value)? choiceMade,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_NextFlowBlockRequested value)? nextFlowBlockRequested,
    TResult Function(_ParameterAddedOrUpdated value)? parameterAddedOrUpdated,
    TResult Function(_Retry value)? retry,
    TResult Function(_ChoiceMade value)? choiceMade,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventCopyWith<$Res> {
  factory $ChatEventCopyWith(ChatEvent value, $Res Function(ChatEvent) then) =
      _$ChatEventCopyWithImpl<$Res, ChatEvent>;
}

/// @nodoc
class _$ChatEventCopyWithImpl<$Res, $Val extends ChatEvent>
    implements $ChatEventCopyWith<$Res> {
  _$ChatEventCopyWithImpl(this._value, this._then);

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
  @useResult
  $Res call(
      {String idOrSlug,
      Map<String, String> parameters,
      String? initialMessage,
      String? resultsTitle,
      int? flowBlockId,
      Widget? resultsTitleChild,
      String? analyzingText});
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idOrSlug = null,
    Object? parameters = null,
    Object? initialMessage = freezed,
    Object? resultsTitle = freezed,
    Object? flowBlockId = freezed,
    Object? resultsTitleChild = freezed,
    Object? analyzingText = freezed,
  }) {
    return _then(_$StartedImpl(
      null == idOrSlug
          ? _value.idOrSlug
          : idOrSlug // ignore: cast_nullable_to_non_nullable
              as String,
      null == parameters
          ? _value._parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      freezed == initialMessage
          ? _value.initialMessage
          : initialMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == resultsTitle
          ? _value.resultsTitle
          : resultsTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      flowBlockId: freezed == flowBlockId
          ? _value.flowBlockId
          : flowBlockId // ignore: cast_nullable_to_non_nullable
              as int?,
      resultsTitleChild: freezed == resultsTitleChild
          ? _value.resultsTitleChild
          : resultsTitleChild // ignore: cast_nullable_to_non_nullable
              as Widget?,
      analyzingText: freezed == analyzingText
          ? _value.analyzingText
          : analyzingText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl(this.idOrSlug, final Map<String, String> parameters,
      this.initialMessage, this.resultsTitle,
      {this.flowBlockId, this.resultsTitleChild, this.analyzingText})
      : _parameters = parameters;

  @override
  final String idOrSlug;
  final Map<String, String> _parameters;
  @override
  Map<String, String> get parameters {
    if (_parameters is EqualUnmodifiableMapView) return _parameters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_parameters);
  }

  @override
  final String? initialMessage;
  @override
  final String? resultsTitle;
  @override
  final int? flowBlockId;
  @override
  final Widget? resultsTitleChild;
  @override
  final String? analyzingText;

  @override
  String toString() {
    return 'ChatEvent.started(idOrSlug: $idOrSlug, parameters: $parameters, initialMessage: $initialMessage, resultsTitle: $resultsTitle, flowBlockId: $flowBlockId, resultsTitleChild: $resultsTitleChild, analyzingText: $analyzingText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedImpl &&
            (identical(other.idOrSlug, idOrSlug) ||
                other.idOrSlug == idOrSlug) &&
            const DeepCollectionEquality()
                .equals(other._parameters, _parameters) &&
            (identical(other.initialMessage, initialMessage) ||
                other.initialMessage == initialMessage) &&
            (identical(other.resultsTitle, resultsTitle) ||
                other.resultsTitle == resultsTitle) &&
            (identical(other.flowBlockId, flowBlockId) ||
                other.flowBlockId == flowBlockId) &&
            (identical(other.resultsTitleChild, resultsTitleChild) ||
                other.resultsTitleChild == resultsTitleChild) &&
            (identical(other.analyzingText, analyzingText) ||
                other.analyzingText == analyzingText));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      idOrSlug,
      const DeepCollectionEquality().hash(_parameters),
      initialMessage,
      resultsTitle,
      flowBlockId,
      resultsTitleChild,
      analyzingText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String idOrSlug,
            Map<String, String> parameters,
            String? initialMessage,
            String? resultsTitle,
            int? flowBlockId,
            Widget? resultsTitleChild,
            String? analyzingText)
        started,
    required TResult Function(int? id) nextFlowBlockRequested,
    required TResult Function(String key, String value) parameterAddedOrUpdated,
    required TResult Function() retry,
    required TResult Function(
            String? key, String value, bool userValue, bool showKeyboard)
        choiceMade,
  }) {
    return started(idOrSlug, parameters, initialMessage, resultsTitle,
        flowBlockId, resultsTitleChild, analyzingText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String idOrSlug,
            Map<String, String> parameters,
            String? initialMessage,
            String? resultsTitle,
            int? flowBlockId,
            Widget? resultsTitleChild,
            String? analyzingText)?
        started,
    TResult? Function(int? id)? nextFlowBlockRequested,
    TResult? Function(String key, String value)? parameterAddedOrUpdated,
    TResult? Function()? retry,
    TResult? Function(
            String? key, String value, bool userValue, bool showKeyboard)?
        choiceMade,
  }) {
    return started?.call(idOrSlug, parameters, initialMessage, resultsTitle,
        flowBlockId, resultsTitleChild, analyzingText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String idOrSlug,
            Map<String, String> parameters,
            String? initialMessage,
            String? resultsTitle,
            int? flowBlockId,
            Widget? resultsTitleChild,
            String? analyzingText)?
        started,
    TResult Function(int? id)? nextFlowBlockRequested,
    TResult Function(String key, String value)? parameterAddedOrUpdated,
    TResult Function()? retry,
    TResult Function(
            String? key, String value, bool userValue, bool showKeyboard)?
        choiceMade,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(idOrSlug, parameters, initialMessage, resultsTitle,
          flowBlockId, resultsTitleChild, analyzingText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_NextFlowBlockRequested value)
        nextFlowBlockRequested,
    required TResult Function(_ParameterAddedOrUpdated value)
        parameterAddedOrUpdated,
    required TResult Function(_Retry value) retry,
    required TResult Function(_ChoiceMade value) choiceMade,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_NextFlowBlockRequested value)? nextFlowBlockRequested,
    TResult? Function(_ParameterAddedOrUpdated value)? parameterAddedOrUpdated,
    TResult? Function(_Retry value)? retry,
    TResult? Function(_ChoiceMade value)? choiceMade,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_NextFlowBlockRequested value)? nextFlowBlockRequested,
    TResult Function(_ParameterAddedOrUpdated value)? parameterAddedOrUpdated,
    TResult Function(_Retry value)? retry,
    TResult Function(_ChoiceMade value)? choiceMade,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ChatEvent {
  const factory _Started(
      final String idOrSlug,
      final Map<String, String> parameters,
      final String? initialMessage,
      final String? resultsTitle,
      {final int? flowBlockId,
      final Widget? resultsTitleChild,
      final String? analyzingText}) = _$StartedImpl;

  String get idOrSlug;
  Map<String, String> get parameters;
  String? get initialMessage;
  String? get resultsTitle;
  int? get flowBlockId;
  Widget? get resultsTitleChild;
  String? get analyzingText;
  @JsonKey(ignore: true)
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NextFlowBlockRequestedImplCopyWith<$Res> {
  factory _$$NextFlowBlockRequestedImplCopyWith(
          _$NextFlowBlockRequestedImpl value,
          $Res Function(_$NextFlowBlockRequestedImpl) then) =
      __$$NextFlowBlockRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? id});
}

/// @nodoc
class __$$NextFlowBlockRequestedImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$NextFlowBlockRequestedImpl>
    implements _$$NextFlowBlockRequestedImplCopyWith<$Res> {
  __$$NextFlowBlockRequestedImplCopyWithImpl(
      _$NextFlowBlockRequestedImpl _value,
      $Res Function(_$NextFlowBlockRequestedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$NextFlowBlockRequestedImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$NextFlowBlockRequestedImpl implements _NextFlowBlockRequested {
  const _$NextFlowBlockRequestedImpl({this.id});

  @override
  final int? id;

  @override
  String toString() {
    return 'ChatEvent.nextFlowBlockRequested(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NextFlowBlockRequestedImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NextFlowBlockRequestedImplCopyWith<_$NextFlowBlockRequestedImpl>
      get copyWith => __$$NextFlowBlockRequestedImplCopyWithImpl<
          _$NextFlowBlockRequestedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String idOrSlug,
            Map<String, String> parameters,
            String? initialMessage,
            String? resultsTitle,
            int? flowBlockId,
            Widget? resultsTitleChild,
            String? analyzingText)
        started,
    required TResult Function(int? id) nextFlowBlockRequested,
    required TResult Function(String key, String value) parameterAddedOrUpdated,
    required TResult Function() retry,
    required TResult Function(
            String? key, String value, bool userValue, bool showKeyboard)
        choiceMade,
  }) {
    return nextFlowBlockRequested(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String idOrSlug,
            Map<String, String> parameters,
            String? initialMessage,
            String? resultsTitle,
            int? flowBlockId,
            Widget? resultsTitleChild,
            String? analyzingText)?
        started,
    TResult? Function(int? id)? nextFlowBlockRequested,
    TResult? Function(String key, String value)? parameterAddedOrUpdated,
    TResult? Function()? retry,
    TResult? Function(
            String? key, String value, bool userValue, bool showKeyboard)?
        choiceMade,
  }) {
    return nextFlowBlockRequested?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String idOrSlug,
            Map<String, String> parameters,
            String? initialMessage,
            String? resultsTitle,
            int? flowBlockId,
            Widget? resultsTitleChild,
            String? analyzingText)?
        started,
    TResult Function(int? id)? nextFlowBlockRequested,
    TResult Function(String key, String value)? parameterAddedOrUpdated,
    TResult Function()? retry,
    TResult Function(
            String? key, String value, bool userValue, bool showKeyboard)?
        choiceMade,
    required TResult orElse(),
  }) {
    if (nextFlowBlockRequested != null) {
      return nextFlowBlockRequested(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_NextFlowBlockRequested value)
        nextFlowBlockRequested,
    required TResult Function(_ParameterAddedOrUpdated value)
        parameterAddedOrUpdated,
    required TResult Function(_Retry value) retry,
    required TResult Function(_ChoiceMade value) choiceMade,
  }) {
    return nextFlowBlockRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_NextFlowBlockRequested value)? nextFlowBlockRequested,
    TResult? Function(_ParameterAddedOrUpdated value)? parameterAddedOrUpdated,
    TResult? Function(_Retry value)? retry,
    TResult? Function(_ChoiceMade value)? choiceMade,
  }) {
    return nextFlowBlockRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_NextFlowBlockRequested value)? nextFlowBlockRequested,
    TResult Function(_ParameterAddedOrUpdated value)? parameterAddedOrUpdated,
    TResult Function(_Retry value)? retry,
    TResult Function(_ChoiceMade value)? choiceMade,
    required TResult orElse(),
  }) {
    if (nextFlowBlockRequested != null) {
      return nextFlowBlockRequested(this);
    }
    return orElse();
  }
}

abstract class _NextFlowBlockRequested implements ChatEvent {
  const factory _NextFlowBlockRequested({final int? id}) =
      _$NextFlowBlockRequestedImpl;

  int? get id;
  @JsonKey(ignore: true)
  _$$NextFlowBlockRequestedImplCopyWith<_$NextFlowBlockRequestedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ParameterAddedOrUpdatedImplCopyWith<$Res> {
  factory _$$ParameterAddedOrUpdatedImplCopyWith(
          _$ParameterAddedOrUpdatedImpl value,
          $Res Function(_$ParameterAddedOrUpdatedImpl) then) =
      __$$ParameterAddedOrUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String key, String value});
}

/// @nodoc
class __$$ParameterAddedOrUpdatedImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$ParameterAddedOrUpdatedImpl>
    implements _$$ParameterAddedOrUpdatedImplCopyWith<$Res> {
  __$$ParameterAddedOrUpdatedImplCopyWithImpl(
      _$ParameterAddedOrUpdatedImpl _value,
      $Res Function(_$ParameterAddedOrUpdatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = null,
  }) {
    return _then(_$ParameterAddedOrUpdatedImpl(
      null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ParameterAddedOrUpdatedImpl implements _ParameterAddedOrUpdated {
  const _$ParameterAddedOrUpdatedImpl(this.key, this.value);

  @override
  final String key;
  @override
  final String value;

  @override
  String toString() {
    return 'ChatEvent.parameterAddedOrUpdated(key: $key, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParameterAddedOrUpdatedImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, key, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParameterAddedOrUpdatedImplCopyWith<_$ParameterAddedOrUpdatedImpl>
      get copyWith => __$$ParameterAddedOrUpdatedImplCopyWithImpl<
          _$ParameterAddedOrUpdatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String idOrSlug,
            Map<String, String> parameters,
            String? initialMessage,
            String? resultsTitle,
            int? flowBlockId,
            Widget? resultsTitleChild,
            String? analyzingText)
        started,
    required TResult Function(int? id) nextFlowBlockRequested,
    required TResult Function(String key, String value) parameterAddedOrUpdated,
    required TResult Function() retry,
    required TResult Function(
            String? key, String value, bool userValue, bool showKeyboard)
        choiceMade,
  }) {
    return parameterAddedOrUpdated(key, value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String idOrSlug,
            Map<String, String> parameters,
            String? initialMessage,
            String? resultsTitle,
            int? flowBlockId,
            Widget? resultsTitleChild,
            String? analyzingText)?
        started,
    TResult? Function(int? id)? nextFlowBlockRequested,
    TResult? Function(String key, String value)? parameterAddedOrUpdated,
    TResult? Function()? retry,
    TResult? Function(
            String? key, String value, bool userValue, bool showKeyboard)?
        choiceMade,
  }) {
    return parameterAddedOrUpdated?.call(key, value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String idOrSlug,
            Map<String, String> parameters,
            String? initialMessage,
            String? resultsTitle,
            int? flowBlockId,
            Widget? resultsTitleChild,
            String? analyzingText)?
        started,
    TResult Function(int? id)? nextFlowBlockRequested,
    TResult Function(String key, String value)? parameterAddedOrUpdated,
    TResult Function()? retry,
    TResult Function(
            String? key, String value, bool userValue, bool showKeyboard)?
        choiceMade,
    required TResult orElse(),
  }) {
    if (parameterAddedOrUpdated != null) {
      return parameterAddedOrUpdated(key, value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_NextFlowBlockRequested value)
        nextFlowBlockRequested,
    required TResult Function(_ParameterAddedOrUpdated value)
        parameterAddedOrUpdated,
    required TResult Function(_Retry value) retry,
    required TResult Function(_ChoiceMade value) choiceMade,
  }) {
    return parameterAddedOrUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_NextFlowBlockRequested value)? nextFlowBlockRequested,
    TResult? Function(_ParameterAddedOrUpdated value)? parameterAddedOrUpdated,
    TResult? Function(_Retry value)? retry,
    TResult? Function(_ChoiceMade value)? choiceMade,
  }) {
    return parameterAddedOrUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_NextFlowBlockRequested value)? nextFlowBlockRequested,
    TResult Function(_ParameterAddedOrUpdated value)? parameterAddedOrUpdated,
    TResult Function(_Retry value)? retry,
    TResult Function(_ChoiceMade value)? choiceMade,
    required TResult orElse(),
  }) {
    if (parameterAddedOrUpdated != null) {
      return parameterAddedOrUpdated(this);
    }
    return orElse();
  }
}

abstract class _ParameterAddedOrUpdated implements ChatEvent {
  const factory _ParameterAddedOrUpdated(final String key, final String value) =
      _$ParameterAddedOrUpdatedImpl;

  String get key;
  String get value;
  @JsonKey(ignore: true)
  _$$ParameterAddedOrUpdatedImplCopyWith<_$ParameterAddedOrUpdatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RetryImplCopyWith<$Res> {
  factory _$$RetryImplCopyWith(
          _$RetryImpl value, $Res Function(_$RetryImpl) then) =
      __$$RetryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RetryImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$RetryImpl>
    implements _$$RetryImplCopyWith<$Res> {
  __$$RetryImplCopyWithImpl(
      _$RetryImpl _value, $Res Function(_$RetryImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RetryImpl implements _Retry {
  const _$RetryImpl();

  @override
  String toString() {
    return 'ChatEvent.retry()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RetryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String idOrSlug,
            Map<String, String> parameters,
            String? initialMessage,
            String? resultsTitle,
            int? flowBlockId,
            Widget? resultsTitleChild,
            String? analyzingText)
        started,
    required TResult Function(int? id) nextFlowBlockRequested,
    required TResult Function(String key, String value) parameterAddedOrUpdated,
    required TResult Function() retry,
    required TResult Function(
            String? key, String value, bool userValue, bool showKeyboard)
        choiceMade,
  }) {
    return retry();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String idOrSlug,
            Map<String, String> parameters,
            String? initialMessage,
            String? resultsTitle,
            int? flowBlockId,
            Widget? resultsTitleChild,
            String? analyzingText)?
        started,
    TResult? Function(int? id)? nextFlowBlockRequested,
    TResult? Function(String key, String value)? parameterAddedOrUpdated,
    TResult? Function()? retry,
    TResult? Function(
            String? key, String value, bool userValue, bool showKeyboard)?
        choiceMade,
  }) {
    return retry?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String idOrSlug,
            Map<String, String> parameters,
            String? initialMessage,
            String? resultsTitle,
            int? flowBlockId,
            Widget? resultsTitleChild,
            String? analyzingText)?
        started,
    TResult Function(int? id)? nextFlowBlockRequested,
    TResult Function(String key, String value)? parameterAddedOrUpdated,
    TResult Function()? retry,
    TResult Function(
            String? key, String value, bool userValue, bool showKeyboard)?
        choiceMade,
    required TResult orElse(),
  }) {
    if (retry != null) {
      return retry();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_NextFlowBlockRequested value)
        nextFlowBlockRequested,
    required TResult Function(_ParameterAddedOrUpdated value)
        parameterAddedOrUpdated,
    required TResult Function(_Retry value) retry,
    required TResult Function(_ChoiceMade value) choiceMade,
  }) {
    return retry(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_NextFlowBlockRequested value)? nextFlowBlockRequested,
    TResult? Function(_ParameterAddedOrUpdated value)? parameterAddedOrUpdated,
    TResult? Function(_Retry value)? retry,
    TResult? Function(_ChoiceMade value)? choiceMade,
  }) {
    return retry?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_NextFlowBlockRequested value)? nextFlowBlockRequested,
    TResult Function(_ParameterAddedOrUpdated value)? parameterAddedOrUpdated,
    TResult Function(_Retry value)? retry,
    TResult Function(_ChoiceMade value)? choiceMade,
    required TResult orElse(),
  }) {
    if (retry != null) {
      return retry(this);
    }
    return orElse();
  }
}

abstract class _Retry implements ChatEvent {
  const factory _Retry() = _$RetryImpl;
}

/// @nodoc
abstract class _$$ChoiceMadeImplCopyWith<$Res> {
  factory _$$ChoiceMadeImplCopyWith(
          _$ChoiceMadeImpl value, $Res Function(_$ChoiceMadeImpl) then) =
      __$$ChoiceMadeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? key, String value, bool userValue, bool showKeyboard});
}

/// @nodoc
class __$$ChoiceMadeImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$ChoiceMadeImpl>
    implements _$$ChoiceMadeImplCopyWith<$Res> {
  __$$ChoiceMadeImplCopyWithImpl(
      _$ChoiceMadeImpl _value, $Res Function(_$ChoiceMadeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? value = null,
    Object? userValue = null,
    Object? showKeyboard = null,
  }) {
    return _then(_$ChoiceMadeImpl(
      freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      null == userValue
          ? _value.userValue
          : userValue // ignore: cast_nullable_to_non_nullable
              as bool,
      null == showKeyboard
          ? _value.showKeyboard
          : showKeyboard // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ChoiceMadeImpl implements _ChoiceMade {
  const _$ChoiceMadeImpl(
      this.key, this.value, this.userValue, this.showKeyboard);

  @override
  final String? key;
  @override
  final String value;
  @override
  final bool userValue;
  @override
  final bool showKeyboard;

  @override
  String toString() {
    return 'ChatEvent.choiceMade(key: $key, value: $value, userValue: $userValue, showKeyboard: $showKeyboard)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChoiceMadeImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.userValue, userValue) ||
                other.userValue == userValue) &&
            (identical(other.showKeyboard, showKeyboard) ||
                other.showKeyboard == showKeyboard));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, key, value, userValue, showKeyboard);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChoiceMadeImplCopyWith<_$ChoiceMadeImpl> get copyWith =>
      __$$ChoiceMadeImplCopyWithImpl<_$ChoiceMadeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String idOrSlug,
            Map<String, String> parameters,
            String? initialMessage,
            String? resultsTitle,
            int? flowBlockId,
            Widget? resultsTitleChild,
            String? analyzingText)
        started,
    required TResult Function(int? id) nextFlowBlockRequested,
    required TResult Function(String key, String value) parameterAddedOrUpdated,
    required TResult Function() retry,
    required TResult Function(
            String? key, String value, bool userValue, bool showKeyboard)
        choiceMade,
  }) {
    return choiceMade(key, value, userValue, showKeyboard);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String idOrSlug,
            Map<String, String> parameters,
            String? initialMessage,
            String? resultsTitle,
            int? flowBlockId,
            Widget? resultsTitleChild,
            String? analyzingText)?
        started,
    TResult? Function(int? id)? nextFlowBlockRequested,
    TResult? Function(String key, String value)? parameterAddedOrUpdated,
    TResult? Function()? retry,
    TResult? Function(
            String? key, String value, bool userValue, bool showKeyboard)?
        choiceMade,
  }) {
    return choiceMade?.call(key, value, userValue, showKeyboard);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String idOrSlug,
            Map<String, String> parameters,
            String? initialMessage,
            String? resultsTitle,
            int? flowBlockId,
            Widget? resultsTitleChild,
            String? analyzingText)?
        started,
    TResult Function(int? id)? nextFlowBlockRequested,
    TResult Function(String key, String value)? parameterAddedOrUpdated,
    TResult Function()? retry,
    TResult Function(
            String? key, String value, bool userValue, bool showKeyboard)?
        choiceMade,
    required TResult orElse(),
  }) {
    if (choiceMade != null) {
      return choiceMade(key, value, userValue, showKeyboard);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_NextFlowBlockRequested value)
        nextFlowBlockRequested,
    required TResult Function(_ParameterAddedOrUpdated value)
        parameterAddedOrUpdated,
    required TResult Function(_Retry value) retry,
    required TResult Function(_ChoiceMade value) choiceMade,
  }) {
    return choiceMade(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_NextFlowBlockRequested value)? nextFlowBlockRequested,
    TResult? Function(_ParameterAddedOrUpdated value)? parameterAddedOrUpdated,
    TResult? Function(_Retry value)? retry,
    TResult? Function(_ChoiceMade value)? choiceMade,
  }) {
    return choiceMade?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_NextFlowBlockRequested value)? nextFlowBlockRequested,
    TResult Function(_ParameterAddedOrUpdated value)? parameterAddedOrUpdated,
    TResult Function(_Retry value)? retry,
    TResult Function(_ChoiceMade value)? choiceMade,
    required TResult orElse(),
  }) {
    if (choiceMade != null) {
      return choiceMade(this);
    }
    return orElse();
  }
}

abstract class _ChoiceMade implements ChatEvent {
  const factory _ChoiceMade(final String? key, final String value,
      final bool userValue, final bool showKeyboard) = _$ChoiceMadeImpl;

  String? get key;
  String get value;
  bool get userValue;
  bool get showKeyboard;
  @JsonKey(ignore: true)
  _$$ChoiceMadeImplCopyWith<_$ChoiceMadeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatState {
  List<Message> get messages => throw _privateConstructorUsedError;
  int? get flowId => throw _privateConstructorUsedError;
  int? get flowBlockId => throw _privateConstructorUsedError;
  int? get step => throw _privateConstructorUsedError;
  String? get journeyId => throw _privateConstructorUsedError;
  String? get action => throw _privateConstructorUsedError;
  Map<String, String> get parameters => throw _privateConstructorUsedError;
  PageState get pageStatus => throw _privateConstructorUsedError;
  ChatEvent? get failedEvent => throw _privateConstructorUsedError;
  bool get isFinished => throw _privateConstructorUsedError;
  int? get goToFlowBlockId => throw _privateConstructorUsedError;
  bool get showProcessing => throw _privateConstructorUsedError;
  String? get resultsTitle => throw _privateConstructorUsedError;
  Widget? get resultsTitleChild => throw _privateConstructorUsedError;
  String get analyzingText => throw _privateConstructorUsedError;
  ActionState get chatStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatStateCopyWith<ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
  @useResult
  $Res call(
      {List<Message> messages,
      int? flowId,
      int? flowBlockId,
      int? step,
      String? journeyId,
      String? action,
      Map<String, String> parameters,
      PageState pageStatus,
      ChatEvent? failedEvent,
      bool isFinished,
      int? goToFlowBlockId,
      bool showProcessing,
      String? resultsTitle,
      Widget? resultsTitleChild,
      String analyzingText,
      ActionState chatStatus});

  $PageStateCopyWith<$Res> get pageStatus;
  $ChatEventCopyWith<$Res>? get failedEvent;
  $ActionStateCopyWith<$Res> get chatStatus;
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
    Object? flowId = freezed,
    Object? flowBlockId = freezed,
    Object? step = freezed,
    Object? journeyId = freezed,
    Object? action = freezed,
    Object? parameters = null,
    Object? pageStatus = null,
    Object? failedEvent = freezed,
    Object? isFinished = null,
    Object? goToFlowBlockId = freezed,
    Object? showProcessing = null,
    Object? resultsTitle = freezed,
    Object? resultsTitleChild = freezed,
    Object? analyzingText = null,
    Object? chatStatus = null,
  }) {
    return _then(_value.copyWith(
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
      flowId: freezed == flowId
          ? _value.flowId
          : flowId // ignore: cast_nullable_to_non_nullable
              as int?,
      flowBlockId: freezed == flowBlockId
          ? _value.flowBlockId
          : flowBlockId // ignore: cast_nullable_to_non_nullable
              as int?,
      step: freezed == step
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as int?,
      journeyId: freezed == journeyId
          ? _value.journeyId
          : journeyId // ignore: cast_nullable_to_non_nullable
              as String?,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
      parameters: null == parameters
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      pageStatus: null == pageStatus
          ? _value.pageStatus
          : pageStatus // ignore: cast_nullable_to_non_nullable
              as PageState,
      failedEvent: freezed == failedEvent
          ? _value.failedEvent
          : failedEvent // ignore: cast_nullable_to_non_nullable
              as ChatEvent?,
      isFinished: null == isFinished
          ? _value.isFinished
          : isFinished // ignore: cast_nullable_to_non_nullable
              as bool,
      goToFlowBlockId: freezed == goToFlowBlockId
          ? _value.goToFlowBlockId
          : goToFlowBlockId // ignore: cast_nullable_to_non_nullable
              as int?,
      showProcessing: null == showProcessing
          ? _value.showProcessing
          : showProcessing // ignore: cast_nullable_to_non_nullable
              as bool,
      resultsTitle: freezed == resultsTitle
          ? _value.resultsTitle
          : resultsTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      resultsTitleChild: freezed == resultsTitleChild
          ? _value.resultsTitleChild
          : resultsTitleChild // ignore: cast_nullable_to_non_nullable
              as Widget?,
      analyzingText: null == analyzingText
          ? _value.analyzingText
          : analyzingText // ignore: cast_nullable_to_non_nullable
              as String,
      chatStatus: null == chatStatus
          ? _value.chatStatus
          : chatStatus // ignore: cast_nullable_to_non_nullable
              as ActionState,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PageStateCopyWith<$Res> get pageStatus {
    return $PageStateCopyWith<$Res>(_value.pageStatus, (value) {
      return _then(_value.copyWith(pageStatus: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ChatEventCopyWith<$Res>? get failedEvent {
    if (_value.failedEvent == null) {
      return null;
    }

    return $ChatEventCopyWith<$Res>(_value.failedEvent!, (value) {
      return _then(_value.copyWith(failedEvent: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ActionStateCopyWith<$Res> get chatStatus {
    return $ActionStateCopyWith<$Res>(_value.chatStatus, (value) {
      return _then(_value.copyWith(chatStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatStateImplCopyWith<$Res>
    implements $ChatStateCopyWith<$Res> {
  factory _$$ChatStateImplCopyWith(
          _$ChatStateImpl value, $Res Function(_$ChatStateImpl) then) =
      __$$ChatStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Message> messages,
      int? flowId,
      int? flowBlockId,
      int? step,
      String? journeyId,
      String? action,
      Map<String, String> parameters,
      PageState pageStatus,
      ChatEvent? failedEvent,
      bool isFinished,
      int? goToFlowBlockId,
      bool showProcessing,
      String? resultsTitle,
      Widget? resultsTitleChild,
      String analyzingText,
      ActionState chatStatus});

  @override
  $PageStateCopyWith<$Res> get pageStatus;
  @override
  $ChatEventCopyWith<$Res>? get failedEvent;
  @override
  $ActionStateCopyWith<$Res> get chatStatus;
}

/// @nodoc
class __$$ChatStateImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ChatStateImpl>
    implements _$$ChatStateImplCopyWith<$Res> {
  __$$ChatStateImplCopyWithImpl(
      _$ChatStateImpl _value, $Res Function(_$ChatStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
    Object? flowId = freezed,
    Object? flowBlockId = freezed,
    Object? step = freezed,
    Object? journeyId = freezed,
    Object? action = freezed,
    Object? parameters = null,
    Object? pageStatus = null,
    Object? failedEvent = freezed,
    Object? isFinished = null,
    Object? goToFlowBlockId = freezed,
    Object? showProcessing = null,
    Object? resultsTitle = freezed,
    Object? resultsTitleChild = freezed,
    Object? analyzingText = null,
    Object? chatStatus = null,
  }) {
    return _then(_$ChatStateImpl(
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
      flowId: freezed == flowId
          ? _value.flowId
          : flowId // ignore: cast_nullable_to_non_nullable
              as int?,
      flowBlockId: freezed == flowBlockId
          ? _value.flowBlockId
          : flowBlockId // ignore: cast_nullable_to_non_nullable
              as int?,
      step: freezed == step
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as int?,
      journeyId: freezed == journeyId
          ? _value.journeyId
          : journeyId // ignore: cast_nullable_to_non_nullable
              as String?,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
      parameters: null == parameters
          ? _value._parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      pageStatus: null == pageStatus
          ? _value.pageStatus
          : pageStatus // ignore: cast_nullable_to_non_nullable
              as PageState,
      failedEvent: freezed == failedEvent
          ? _value.failedEvent
          : failedEvent // ignore: cast_nullable_to_non_nullable
              as ChatEvent?,
      isFinished: null == isFinished
          ? _value.isFinished
          : isFinished // ignore: cast_nullable_to_non_nullable
              as bool,
      goToFlowBlockId: freezed == goToFlowBlockId
          ? _value.goToFlowBlockId
          : goToFlowBlockId // ignore: cast_nullable_to_non_nullable
              as int?,
      showProcessing: null == showProcessing
          ? _value.showProcessing
          : showProcessing // ignore: cast_nullable_to_non_nullable
              as bool,
      resultsTitle: freezed == resultsTitle
          ? _value.resultsTitle
          : resultsTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      resultsTitleChild: freezed == resultsTitleChild
          ? _value.resultsTitleChild
          : resultsTitleChild // ignore: cast_nullable_to_non_nullable
              as Widget?,
      analyzingText: null == analyzingText
          ? _value.analyzingText
          : analyzingText // ignore: cast_nullable_to_non_nullable
              as String,
      chatStatus: null == chatStatus
          ? _value.chatStatus
          : chatStatus // ignore: cast_nullable_to_non_nullable
              as ActionState,
    ));
  }
}

/// @nodoc

class _$ChatStateImpl implements _ChatState {
  const _$ChatStateImpl(
      {final List<Message> messages = const [],
      this.flowId,
      this.flowBlockId,
      this.step = 1,
      this.journeyId,
      this.action,
      final Map<String, String> parameters = const <String, String>{},
      this.pageStatus = const PageState.initial(),
      this.failedEvent,
      this.isFinished = false,
      this.goToFlowBlockId,
      this.showProcessing = false,
      this.resultsTitle,
      this.resultsTitleChild,
      this.analyzingText = "Analyzing your results",
      this.chatStatus = const ActionState.idle()})
      : _messages = messages,
        _parameters = parameters;

  final List<Message> _messages;
  @override
  @JsonKey()
  List<Message> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  final int? flowId;
  @override
  final int? flowBlockId;
  @override
  @JsonKey()
  final int? step;
  @override
  final String? journeyId;
  @override
  final String? action;
  final Map<String, String> _parameters;
  @override
  @JsonKey()
  Map<String, String> get parameters {
    if (_parameters is EqualUnmodifiableMapView) return _parameters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_parameters);
  }

  @override
  @JsonKey()
  final PageState pageStatus;
  @override
  final ChatEvent? failedEvent;
  @override
  @JsonKey()
  final bool isFinished;
  @override
  final int? goToFlowBlockId;
  @override
  @JsonKey()
  final bool showProcessing;
  @override
  final String? resultsTitle;
  @override
  final Widget? resultsTitleChild;
  @override
  @JsonKey()
  final String analyzingText;
  @override
  @JsonKey()
  final ActionState chatStatus;

  @override
  String toString() {
    return 'ChatState(messages: $messages, flowId: $flowId, flowBlockId: $flowBlockId, step: $step, journeyId: $journeyId, action: $action, parameters: $parameters, pageStatus: $pageStatus, failedEvent: $failedEvent, isFinished: $isFinished, goToFlowBlockId: $goToFlowBlockId, showProcessing: $showProcessing, resultsTitle: $resultsTitle, resultsTitleChild: $resultsTitleChild, analyzingText: $analyzingText, chatStatus: $chatStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatStateImpl &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.flowId, flowId) || other.flowId == flowId) &&
            (identical(other.flowBlockId, flowBlockId) ||
                other.flowBlockId == flowBlockId) &&
            (identical(other.step, step) || other.step == step) &&
            (identical(other.journeyId, journeyId) ||
                other.journeyId == journeyId) &&
            (identical(other.action, action) || other.action == action) &&
            const DeepCollectionEquality()
                .equals(other._parameters, _parameters) &&
            (identical(other.pageStatus, pageStatus) ||
                other.pageStatus == pageStatus) &&
            (identical(other.failedEvent, failedEvent) ||
                other.failedEvent == failedEvent) &&
            (identical(other.isFinished, isFinished) ||
                other.isFinished == isFinished) &&
            (identical(other.goToFlowBlockId, goToFlowBlockId) ||
                other.goToFlowBlockId == goToFlowBlockId) &&
            (identical(other.showProcessing, showProcessing) ||
                other.showProcessing == showProcessing) &&
            (identical(other.resultsTitle, resultsTitle) ||
                other.resultsTitle == resultsTitle) &&
            (identical(other.resultsTitleChild, resultsTitleChild) ||
                other.resultsTitleChild == resultsTitleChild) &&
            (identical(other.analyzingText, analyzingText) ||
                other.analyzingText == analyzingText) &&
            (identical(other.chatStatus, chatStatus) ||
                other.chatStatus == chatStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_messages),
      flowId,
      flowBlockId,
      step,
      journeyId,
      action,
      const DeepCollectionEquality().hash(_parameters),
      pageStatus,
      failedEvent,
      isFinished,
      goToFlowBlockId,
      showProcessing,
      resultsTitle,
      resultsTitleChild,
      analyzingText,
      chatStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatStateImplCopyWith<_$ChatStateImpl> get copyWith =>
      __$$ChatStateImplCopyWithImpl<_$ChatStateImpl>(this, _$identity);
}

abstract class _ChatState implements ChatState {
  const factory _ChatState(
      {final List<Message> messages,
      final int? flowId,
      final int? flowBlockId,
      final int? step,
      final String? journeyId,
      final String? action,
      final Map<String, String> parameters,
      final PageState pageStatus,
      final ChatEvent? failedEvent,
      final bool isFinished,
      final int? goToFlowBlockId,
      final bool showProcessing,
      final String? resultsTitle,
      final Widget? resultsTitleChild,
      final String analyzingText,
      final ActionState chatStatus}) = _$ChatStateImpl;

  @override
  List<Message> get messages;
  @override
  int? get flowId;
  @override
  int? get flowBlockId;
  @override
  int? get step;
  @override
  String? get journeyId;
  @override
  String? get action;
  @override
  Map<String, String> get parameters;
  @override
  PageState get pageStatus;
  @override
  ChatEvent? get failedEvent;
  @override
  bool get isFinished;
  @override
  int? get goToFlowBlockId;
  @override
  bool get showProcessing;
  @override
  String? get resultsTitle;
  @override
  Widget? get resultsTitleChild;
  @override
  String get analyzingText;
  @override
  ActionState get chatStatus;
  @override
  @JsonKey(ignore: true)
  _$$ChatStateImplCopyWith<_$ChatStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
