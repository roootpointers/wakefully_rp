import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wakefully_analyzer/core/failure.dart';
import 'package:wakefully_analyzer/core/page_state.dart';
import 'package:wakefully_analyzer/data/contracts/message.dart';
import 'package:wakefully_analyzer/data/flows/flows_repository.dart';
import 'package:wakefully_analyzer/data/flows/goto_flow_block_params.dart';

import '../../../data/contracts/flow_block.dart';
import '../../../data/flows/continue_flow_params.dart';
import '../../action_state.dart';

part 'chat_bloc.freezed.dart';
part 'chat_event.dart';
part 'chat_state.dart';

@injectable
class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final FlowsRepository _flowsRepository;

  ChatBloc(this._flowsRepository) : super(const _ChatState()) {
    on<_Started>(_onStarted);
    on<_NextFlowBlockRequested>(_onNextFlowBlockRequested);
    on<_ParameterAddedOrUpdated>(_onParameterAddedOrUpdated);
    on<_ChoiceMade>(_onChoiceMade);
    on<_Retry>(_onRetry);
  }

  FutureOr<void> _onStarted(_Started event, Emitter<ChatState> emit) async {
    emit(state.copyWith(
      messages: [],
      resultsTitle: event.resultsTitle,
      resultsTitleChild: event.resultsTitleChild,
      analyzingText: event.analyzingText ?? state.analyzingText,
    ));
    if (event.initialMessage != null) {
      emit(state.copyWith(
        messages: _addInitialMessage(event.initialMessage!),
      ));
    }

    emit(state.copyWith(
        messages: _removeProcessingMessages(List.of(state.messages)),
        chatStatus: const ActionState.inProgress()));
    emit(state.copyWith(messages: _addWaitingMessage()));

    Either<Failure, FlowBlock> either;

    if (event.flowBlockId == null) {
      either =
          await _flowsRepository.startFlow(event.idOrSlug, event.parameters);
    } else {
      either = await _flowsRepository.startFlowAt(
          event.idOrSlug, event.flowBlockId!, event.parameters);
    }

    either.fold((l) => _handleError(l, event, emit),
        (r) => _updateStateFromFlowBlock(r, emit));
  }

  void _updateStateFromFlowBlock(FlowBlock flowBlock, Emitter<ChatState> emit) {
    var messages = _removeProcessingMessages(List.of(state.messages));
    messages.add(flowBlock.message);

    emit(state.copyWith(
      flowBlockId: flowBlock.id,
      flowId: flowBlock.flowId,
      messages: messages,
      action: flowBlock.action,
      step: flowBlock.nextStep,
      journeyId: flowBlock.journeyId,
      parameters: flowBlock.parameters,
      goToFlowBlockId: flowBlock.goToFlowBlockId,
      chatStatus: const ActionState.success(),
      showProcessing: flowBlock.showProcessing,
      failedEvent: null,
    ));
  }

  FutureOr<void> _onNextFlowBlockRequested(
      _NextFlowBlockRequested event, Emitter<ChatState> emit) async {
    emit(state.copyWith(
        messages: _removeProcessingMessages(List.of(state.messages)),
        chatStatus: const ActionState.inProgress()));
    emit(state.copyWith(messages: _addWaitingMessage()));

    Either<Failure, FlowBlock> either;

    if (event.id != null || state.goToFlowBlockId != null) {
      final params = GotoFlowBlockParams(
          flowId: state.flowId!,
          flowBlockId: event.id ?? state.goToFlowBlockId!,
          journeyId: state.journeyId!,
          parameters: state.parameters);
      either = await _flowsRepository.gotoFlowBlock(params);
    } else {
      final params = ContinueFlowParams(
          flowId: state.flowId!,
          step: state.step!,
          journeyId: state.journeyId!,
          parameters: state.parameters);
      either = await _flowsRepository.continueFlow(params);
    }

    either.fold((l) => _handleError(l, event, emit),
        (r) => _updateStateFromFlowBlock(r, emit));
  }

  FutureOr<void> _onParameterAddedOrUpdated(
      _ParameterAddedOrUpdated event, Emitter<ChatState> emit) {
    var parameters = Map.of(state.parameters);
    parameters[event.key] = event.value;

    emit(state.copyWith(parameters: parameters));
  }

  FutureOr<void> _onChoiceMade(_ChoiceMade event, Emitter<ChatState> emit) {
    var messages = _disableLastMessageChoices();

    messages.last = messages.last.copyWith(selectedChoice: event.value);

    if (event.showKeyboard) {
      messages = _enableTextInput(messages);
      emit(state.copyWith(messages: messages));
      return null;
    }

    var parameters = Map.of(state.parameters);
    if (event.key != null) {
      parameters[event.key!] = state.action == "go-to-with-content-response"
          ? messages.last.content!
          : event.value;
    }

    if (event.userValue) {
      messages = _addUserMessage(event.value);
    }

    emit(state.copyWith(parameters: parameters, messages: messages));

    if (state.action == "go-to-flow-block" ||
        state.action == "go-to-with-content-response" ||
        state.goToFlowBlockId != null) {
      if (state.goToFlowBlockId != null) {
        add(ChatEvent.nextFlowBlockRequested(id: state.goToFlowBlockId));
      } else {
        var goTo = int.tryParse(event.value);

        if (event.userValue) {
          goTo ??= int.tryParse(messages[messages.length - 2].selectedChoice!);
        }

        add(ChatEvent.nextFlowBlockRequested(id: goTo));
      }
    } else {
      add(const ChatEvent.nextFlowBlockRequested());
    }
  }

  List<Message> _addInitialMessage(String value) {
    var messages = List.of(state.messages);
    messages.add(Message(
        content: value,
        sender: "initial",
        shouldHaveChoices: false,
        allowTextInput: false));
    return messages;
  }

  List<Message> _addUserMessage(String value) {
    var messages = List.of(state.messages);
    messages.add(Message(
        content: value,
        sender: "user",
        shouldHaveChoices: false,
        allowTextInput: false));
    return messages;
  }

  List<Message> _disableLastMessageChoices() {
    var messages = List.of(state.messages);
    var lastMessageIndex = messages.length - 1;
    messages[lastMessageIndex] =
        messages[lastMessageIndex].copyWith(disableChoices: true);
    return messages;
  }

  List<Message> _addWaitingMessage() {
    var messages = List.of(state.messages)
      ..add(Message(
        content: "",
        sender: "waiting",
        allowTextInput: false,
        disableChoices: true,
        shouldHaveChoices: false,
      ));

    return messages;
  }

  List<Message> _removeProcessingMessages(List<Message> messages) {
    messages = messages
      ..removeWhere((element) =>
          element.sender == "waiting" || element.sender == "retry");

    return messages;
  }

  List<Message> _enableTextInput(List<Message> messages) {
    var lastMessageIndex = messages.length - 1;
    messages[lastMessageIndex] =
        messages[lastMessageIndex].copyWith(allowTextInput: true);
    return messages;
  }

  _handleError(Failure l, ChatEvent event, Emitter<ChatState> emit) {
    var messages = _removeProcessingMessages(List.of(state.messages));
    messages.add(Message(
      content: "",
      sender: "retry",
      allowTextInput: false,
      disableChoices: true,
      shouldHaveChoices: false,
    ));

    emit(state.copyWith(
        failedEvent: event,
        messages: messages,
        chatStatus: ActionState.failure(l.message)));
  }

  FutureOr<void> _onRetry(_Retry event, Emitter<ChatState> emit) {
    add(state.failedEvent!);
  }
}
