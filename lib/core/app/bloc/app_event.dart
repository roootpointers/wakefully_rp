part of 'app_bloc.dart';

@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.started() = _Started;
  const factory AppEvent.onboarded() = _Onboarded;
  factory AppEvent.subscriptionChanged(bool subscribed) = _SubscriptionChanged;
  const factory AppEvent.dailyIntentionJournalCompleted() =
      _DailyIntentionJournalCompleted;

  factory AppEvent.fromJson(Map<String, dynamic> json) =>
      _$AppEventFromJson(json);
}
