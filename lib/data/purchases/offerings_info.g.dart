// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offerings_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OfferingsInfoImpl _$$OfferingsInfoImplFromJson(Map<String, dynamic> json) =>
    _$OfferingsInfoImpl(
      monthlyPrice: json['monthlyPrice'] as String,
      isEligibleForTrial: json['isEligibleForTrial'] as bool,
      annualPrice: json['annualPrice'] as String,
      savings: (json['savings'] as num).toInt(),
    );

Map<String, dynamic> _$$OfferingsInfoImplToJson(_$OfferingsInfoImpl instance) =>
    <String, dynamic>{
      'monthlyPrice': instance.monthlyPrice,
      'isEligibleForTrial': instance.isEligibleForTrial,
      'annualPrice': instance.annualPrice,
      'savings': instance.savings,
    };
