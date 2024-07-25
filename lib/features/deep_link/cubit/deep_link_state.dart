part of 'deep_link_cubit.dart';

@freezed
class DeepLinkState with _$DeepLinkState {
  const factory DeepLinkState({
    @Default("") String result,
    @Default("Wakefully") String title,
    int? flowId,
    String? journeyId,
    @Default(PageState.initial()) PageState pageStatus,
  }) = _DeepLinkState;
}
