// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'redeem_promo_code_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RedeemPromoCodeRequest _$RedeemPromoCodeRequestFromJson(
    Map<String, dynamic> json) {
  return _RedeemPromoCodeRequest.fromJson(json);
}

/// @nodoc
mixin _$RedeemPromoCodeRequest {
  String get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RedeemPromoCodeRequestCopyWith<RedeemPromoCodeRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RedeemPromoCodeRequestCopyWith<$Res> {
  factory $RedeemPromoCodeRequestCopyWith(RedeemPromoCodeRequest value,
          $Res Function(RedeemPromoCodeRequest) then) =
      _$RedeemPromoCodeRequestCopyWithImpl<$Res, RedeemPromoCodeRequest>;
  @useResult
  $Res call({String code});
}

/// @nodoc
class _$RedeemPromoCodeRequestCopyWithImpl<$Res,
        $Val extends RedeemPromoCodeRequest>
    implements $RedeemPromoCodeRequestCopyWith<$Res> {
  _$RedeemPromoCodeRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RedeemPromoCodeRequestImplCopyWith<$Res>
    implements $RedeemPromoCodeRequestCopyWith<$Res> {
  factory _$$RedeemPromoCodeRequestImplCopyWith(
          _$RedeemPromoCodeRequestImpl value,
          $Res Function(_$RedeemPromoCodeRequestImpl) then) =
      __$$RedeemPromoCodeRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code});
}

/// @nodoc
class __$$RedeemPromoCodeRequestImplCopyWithImpl<$Res>
    extends _$RedeemPromoCodeRequestCopyWithImpl<$Res,
        _$RedeemPromoCodeRequestImpl>
    implements _$$RedeemPromoCodeRequestImplCopyWith<$Res> {
  __$$RedeemPromoCodeRequestImplCopyWithImpl(
      _$RedeemPromoCodeRequestImpl _value,
      $Res Function(_$RedeemPromoCodeRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_$RedeemPromoCodeRequestImpl(
      null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RedeemPromoCodeRequestImpl implements _RedeemPromoCodeRequest {
  _$RedeemPromoCodeRequestImpl(this.code);

  factory _$RedeemPromoCodeRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$RedeemPromoCodeRequestImplFromJson(json);

  @override
  final String code;

  @override
  String toString() {
    return 'RedeemPromoCodeRequest(code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RedeemPromoCodeRequestImpl &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RedeemPromoCodeRequestImplCopyWith<_$RedeemPromoCodeRequestImpl>
      get copyWith => __$$RedeemPromoCodeRequestImplCopyWithImpl<
          _$RedeemPromoCodeRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RedeemPromoCodeRequestImplToJson(
      this,
    );
  }
}

abstract class _RedeemPromoCodeRequest implements RedeemPromoCodeRequest {
  factory _RedeemPromoCodeRequest(final String code) =
      _$RedeemPromoCodeRequestImpl;

  factory _RedeemPromoCodeRequest.fromJson(Map<String, dynamic> json) =
      _$RedeemPromoCodeRequestImpl.fromJson;

  @override
  String get code;
  @override
  @JsonKey(ignore: true)
  _$$RedeemPromoCodeRequestImplCopyWith<_$RedeemPromoCodeRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
