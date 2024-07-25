part of 'chat_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.started(
    String idOrSlug,
    Map<String, String> parameters,
    String? initialMessage,
    String? resultsTitle, {
    int? flowBlockId,
    Widget? resultsTitleChild,
    String? analyzingText,
  }) = _Started;
  const factory ChatEvent.nextFlowBlockRequested({int? id}) =
      _NextFlowBlockRequested;
  const factory ChatEvent.parameterAddedOrUpdated(
    String key,
    String value,
  ) = _ParameterAddedOrUpdated;
  const factory ChatEvent.retry() = _Retry;
  const factory ChatEvent.choiceMade(
          String? key, String value, bool userValue, bool showKeyboard) =
      _ChoiceMade;
}
