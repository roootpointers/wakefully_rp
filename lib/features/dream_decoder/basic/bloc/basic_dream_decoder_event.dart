part of 'basic_dream_decoder_bloc.dart';

@freezed
class BasicDreamDecoderEvent with _$BasicDreamDecoderEvent {
  const factory BasicDreamDecoderEvent.started() = _Started;
  const factory BasicDreamDecoderEvent.dreamTypeSelected(DreamType dreamType) =
      _DreamTypeSelected;
  const factory BasicDreamDecoderEvent.dreamSubTypeSelected(
      String dreamSubType) = _DreamSubTypeSelected;
}
