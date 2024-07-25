import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/page_state.dart';
import '../../../../data/contracts/dream_type.dart';
import '../../../../data/dreams/dreams_repository.dart';

part 'basic_dream_decoder_bloc.freezed.dart';
part 'basic_dream_decoder_event.dart';
part 'basic_dream_decoder_state.dart';

@injectable
class BasicDreamDecoderBloc
    extends Bloc<BasicDreamDecoderEvent, BasicDreamDecoderState> {
  final DreamsRepository _dreamsRepository;

  BasicDreamDecoderBloc(this._dreamsRepository)
      : super(const _BasicDreamDecoderState()) {
    on<_Started>(_onStarted);
    on<_DreamTypeSelected>(_onDreamTypeSelected);
    on<_DreamSubTypeSelected>(_onDreamSubTypeSelected);
  }

  FutureOr<void> _onStarted(
      _Started event, Emitter<BasicDreamDecoderState> emit) async {
    emit(state.copyWith(pageStatus: const PageState.loading()));
    var either = await _dreamsRepository.getDreamTypes();

    either.fold(
        (l) => emit(state.copyWith(
            message: l.message,
            pageStatus: PageState.failure(message: l.message))), (r) {
      emit(
          state.copyWith(dreamTypes: r, pageStatus: const PageState.success()));
    });
  }

  FutureOr<void> _onDreamTypeSelected(
      _DreamTypeSelected event, Emitter<BasicDreamDecoderState> emit) async {
    emit(state.copyWith(selectedDreamType: event.dreamType));
  }

  FutureOr<void> _onDreamSubTypeSelected(
      _DreamSubTypeSelected event, Emitter<BasicDreamDecoderState> emit) async {
    emit(state.copyWith(
      selectedDreamSubType: event.dreamSubType,
    ));
  }
}
