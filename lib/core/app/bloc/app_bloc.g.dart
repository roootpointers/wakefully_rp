// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StartedImpl _$$StartedImplFromJson(Map<String, dynamic> json) =>
    _$StartedImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$StartedImplToJson(_$StartedImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$OnboardedImpl _$$OnboardedImplFromJson(Map<String, dynamic> json) =>
    _$OnboardedImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$OnboardedImplToJson(_$OnboardedImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$SubscriptionChangedImpl _$$SubscriptionChangedImplFromJson(
        Map<String, dynamic> json) =>
    _$SubscriptionChangedImpl(
      json['subscribed'] as bool,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SubscriptionChangedImplToJson(
        _$SubscriptionChangedImpl instance) =>
    <String, dynamic>{
      'subscribed': instance.subscribed,
      'runtimeType': instance.$type,
    };

_$DailyIntentionJournalCompletedImpl
    _$$DailyIntentionJournalCompletedImplFromJson(Map<String, dynamic> json) =>
        _$DailyIntentionJournalCompletedImpl(
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$DailyIntentionJournalCompletedImplToJson(
        _$DailyIntentionJournalCompletedImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$AppStateImpl _$$AppStateImplFromJson(Map<String, dynamic> json) =>
    _$AppStateImpl(
      upgradeMessage: json['upgradeMessage'] as String?,
      upgradeAvailable: json['upgradeAvailable'] as bool? ?? false,
      forceUpgrade: json['forceUpgrade'] as bool? ?? false,
      onboarded: json['onboarded'] as bool? ?? false,
      hasCompletedDailyIntentionJournal:
          json['hasCompletedDailyIntentionJournal'] as bool? ?? false,
    );

Map<String, dynamic> _$$AppStateImplToJson(_$AppStateImpl instance) =>
    <String, dynamic>{
      'upgradeMessage': instance.upgradeMessage,
      'upgradeAvailable': instance.upgradeAvailable,
      'forceUpgrade': instance.forceUpgrade,
      'onboarded': instance.onboarded,
      'hasCompletedDailyIntentionJournal':
          instance.hasCompletedDailyIntentionJournal,
    };
