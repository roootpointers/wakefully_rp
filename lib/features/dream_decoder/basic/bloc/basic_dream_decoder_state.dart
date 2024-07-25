part of 'basic_dream_decoder_bloc.dart';

@freezed
class BasicDreamDecoderState with _$BasicDreamDecoderState {
  const factory BasicDreamDecoderState(
      {@Default([]) List<DreamType> dreamTypes,
      DreamType? selectedDreamType,
      String? selectedDreamSubType,
      @Default(PageState.initial()) PageState pageStatus,
      String? message}) = _BasicDreamDecoderState;
}
