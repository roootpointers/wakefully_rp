part of 'journeys_bloc.dart';

@freezed
class JourneysEvent with _$JourneysEvent {
  const factory JourneysEvent.started() = _Started;
  const factory JourneysEvent.scriptFlipUpdated(
      String scriptFlip, String journeyId) = _ScriptFlipUpdated;
  const factory JourneysEvent.blobsCleared() = _BlobsCleared;
  const factory JourneysEvent.refreshed() = _Refreshed;
}
