// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offerings_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OfferingsInfo _$OfferingsInfoFromJson(Map<String, dynamic> json) {
  return _OfferingsInfo.fromJson(json);
}

/// @nodoc
mixin _$OfferingsInfo {
  String get monthlyPrice => throw _privateConstructorUsedError;
  bool get isEligibleForTrial => throw _privateConstructorUsedError;
  String get annualPrice => throw _privateConstructorUsedError;
  int get savings => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OfferingsInfoCopyWith<OfferingsInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfferingsInfoCopyWith<$Res> {
  factory $OfferingsInfoCopyWith(
          OfferingsInfo value, $Res Function(OfferingsInfo) then) =
      _$OfferingsInfoCopyWithImpl<$Res, OfferingsInfo>;
  @useResult
  $Res call(
      {String monthlyPrice,
      bool isEligibleForTrial,
      String annualPrice,
      int savings});
}

/// @nodoc
class _$OfferingsInfoCopyWithImpl<$Res, $Val extends OfferingsInfo>
    implements $OfferingsInfoCopyWith<$Res> {
  _$OfferingsInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? monthlyPrice = null,
    Object? isEligibleForTrial = null,
    Object? annualPrice = null,
    Object? savings = null,
  }) {
    return _then(_value.copyWith(
      monthlyPrice: null == monthlyPrice
          ? _value.monthlyPrice
          : monthlyPrice // ignore: cast_nullable_to_non_nullable
              as String,
      isEligibleForTrial: null == isEligibleForTrial
          ? _value.isEligibleForTrial
          : isEligibleForTrial // ignore: cast_nullable_to_non_nullable
              as bool,
      annualPrice: null == annualPrice
          ? _value.annualPrice
          : annualPrice // ignore: cast_nullable_to_non_nullable
              as String,
      savings: null == savings
          ? _value.savings
          : savings // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OfferingsInfoImplCopyWith<$Res>
    implements $OfferingsInfoCopyWith<$Res> {
  factory _$$OfferingsInfoImplCopyWith(
          _$OfferingsInfoImpl value, $Res Function(_$OfferingsInfoImpl) then) =
      __$$OfferingsInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String monthlyPrice,
      bool isEligibleForTrial,
      String annualPrice,
      int savings});
}

/// @nodoc
class __$$OfferingsInfoImplCopyWithImpl<$Res>
    extends _$OfferingsInfoCopyWithImpl<$Res, _$OfferingsInfoImpl>
    implements _$$OfferingsInfoImplCopyWith<$Res> {
  __$$OfferingsInfoImplCopyWithImpl(
      _$OfferingsInfoImpl _value, $Res Function(_$OfferingsInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? monthlyPrice = null,
    Object? isEligibleForTrial = null,
    Object? annualPrice = null,
    Object? savings = null,
  }) {
    return _then(_$OfferingsInfoImpl(
      monthlyPrice: null == monthlyPrice
          ? _value.monthlyPrice
          : monthlyPrice // ignore: cast_nullable_to_non_nullable
              as String,
      isEligibleForTrial: null == isEligibleForTrial
          ? _value.isEligibleForTrial
          : isEligibleForTrial // ignore: cast_nullable_to_non_nullable
              as bool,
      annualPrice: null == annualPrice
          ? _value.annualPrice
          : annualPrice // ignore: cast_nullable_to_non_nullable
              as String,
      savings: null == savings
          ? _value.savings
          : savings // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OfferingsInfoImpl implements _OfferingsInfo {
  const _$OfferingsInfoImpl(
      {required this.monthlyPrice,
      required this.isEligibleForTrial,
      required this.annualPrice,
      required this.savings});

  factory _$OfferingsInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$OfferingsInfoImplFromJson(json);

  @override
  final String monthlyPrice;
  @override
  final bool isEligibleForTrial;
  @override
  final String annualPrice;
  @override
  final int savings;

  @override
  String toString() {
    return 'OfferingsInfo(monthlyPrice: $monthlyPrice, isEligibleForTrial: $isEligibleForTrial, annualPrice: $annualPrice, savings: $savings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OfferingsInfoImpl &&
            (identical(other.monthlyPrice, monthlyPrice) ||
                other.monthlyPrice == monthlyPrice) &&
            (identical(other.isEligibleForTrial, isEligibleForTrial) ||
                other.isEligibleForTrial == isEligibleForTrial) &&
            (identical(other.annualPrice, annualPrice) ||
                other.annualPrice == annualPrice) &&
            (identical(other.savings, savings) || other.savings == savings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, monthlyPrice, isEligibleForTrial, annualPrice, savings);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OfferingsInfoImplCopyWith<_$OfferingsInfoImpl> get copyWith =>
      __$$OfferingsInfoImplCopyWithImpl<_$OfferingsInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OfferingsInfoImplToJson(
      this,
    );
  }
}

abstract class _OfferingsInfo implements OfferingsInfo {
  const factory _OfferingsInfo(
      {required final String monthlyPrice,
      required final bool isEligibleForTrial,
      required final String annualPrice,
      required final int savings}) = _$OfferingsInfoImpl;

  factory _OfferingsInfo.fromJson(Map<String, dynamic> json) =
      _$OfferingsInfoImpl.fromJson;

  @override
  String get monthlyPrice;
  @override
  bool get isEligibleForTrial;
  @override
  String get annualPrice;
  @override
  int get savings;
  @override
  @JsonKey(ignore: true)
  _$$OfferingsInfoImplCopyWith<_$OfferingsInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
