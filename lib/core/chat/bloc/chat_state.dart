part of 'chat_bloc.dart';

@freezed
sealed class ChatState with _$ChatState {
  const factory ChatState({
    @Default([]) List<Message> messages,
    int? flowId,
    int? flowBlockId,
    @Default(1) int? step,
    String? journeyId,
    String? action,
    @Default(<String, String>{}) Map<String, String> parameters,
    @Default(PageState.initial()) PageState pageStatus,
    ChatEvent? failedEvent,
    @Default(false) bool isFinished,
    int? goToFlowBlockId,
    @Default(false) bool showProcessing,
    String? resultsTitle,
    Widget? resultsTitleChild,
    @Default("Analyzing your results") String analyzingText,
    @Default(ActionState.idle()) ActionState chatStatus,
  }) = _ChatState;
}
