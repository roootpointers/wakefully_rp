part of 'app_bloc.dart';

@freezed
class AppState with _$AppState {
  factory AppState({
    String? upgradeMessage,
    @Default(false) bool upgradeAvailable,
    @Default(false) bool forceUpgrade,
    @Default(false) bool onboarded,
    @Default(false) bool hasCompletedDailyIntentionJournal,
  }) = _AppState;

  factory AppState.fromJson(Map<String, dynamic> json) =>
      _$AppStateFromJson(json);
}
