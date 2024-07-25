part of 'dream_details_cubit.dart';

@freezed
sealed class DreamDetailsState with _$DreamDetailsState {
  const factory DreamDetailsState({
    DreamDetails? details,
    @Default(PageState.initial()) PageState pageStatus,
  }) = _DreamDetailsState;
}
