// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchases_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UninitializedPurchasesImpl _$$UninitializedPurchasesImplFromJson(
        Map<String, dynamic> json) =>
    _$UninitializedPurchasesImpl(
      initilization: json['initilization'] == null
          ? const ActionState.idle()
          : ActionState.fromJson(json['initilization'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UninitializedPurchasesImplToJson(
        _$UninitializedPurchasesImpl instance) =>
    <String, dynamic>{
      'initilization': instance.initilization,
      'runtimeType': instance.$type,
    };

_$InitializedPurchasesImpl _$$InitializedPurchasesImplFromJson(
        Map<String, dynamic> json) =>
    _$InitializedPurchasesImpl(
      subscribed: json['subscribed'] as bool? ?? false,
      upgradeAvailable: json['upgradeAvailable'] as bool? ?? false,
      isEligibileForTrial: json['isEligibileForTrial'] as bool? ?? false,
      offeringsInfo:
          OfferingsInfo.fromJson(json['offeringsInfo'] as Map<String, dynamic>),
      latestExpirationDate: json['latestExpirationDate'] == null
          ? null
          : DateTime.parse(json['latestExpirationDate'] as String),
      purchaseState: json['purchaseState'] == null
          ? const ActionState.idle()
          : ActionState.fromJson(json['purchaseState'] as Map<String, dynamic>),
      restorePurchasesState: json['restorePurchasesState'] == null
          ? const ActionState.idle()
          : ActionState.fromJson(
              json['restorePurchasesState'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$InitializedPurchasesImplToJson(
        _$InitializedPurchasesImpl instance) =>
    <String, dynamic>{
      'subscribed': instance.subscribed,
      'upgradeAvailable': instance.upgradeAvailable,
      'isEligibileForTrial': instance.isEligibileForTrial,
      'offeringsInfo': instance.offeringsInfo,
      'latestExpirationDate': instance.latestExpirationDate?.toIso8601String(),
      'purchaseState': instance.purchaseState,
      'restorePurchasesState': instance.restorePurchasesState,
      'runtimeType': instance.$type,
    };
