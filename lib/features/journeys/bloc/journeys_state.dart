part of 'journeys_bloc.dart';

@freezed
class JourneysState with _$JourneysState {
  const factory JourneysState({
    @Default(0) int unreadMessagesCount,
    @Default([]) List<Blob> blobs,
    @Default(null) String? scriptFlip,
    @Default([]) List<ScriptFlip> scriptFlips,
    @Default(PageState.initial()) PageState scriptFlipsStatus,
    @Default(PageState.initial()) PageState blobsStatus,
  }) = _JourneysState;
}
