import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../core/action_state.dart';
import '../../../data/contracts/dream.dart';
import '../../../data/dreams/dreams_repository.dart';
import '../../../utils/extensions.dart';

part 'dreams_bloc.freezed.dart';
part 'dreams_event.dart';
part 'dreams_state.dart';

@injectable
class DreamsBloc extends Bloc<DreamsEvent, DreamsState> {
  final DreamsRepository _dreamsRepository;

  DreamsBloc(this._dreamsRepository) : super(const _DreamsState()) {
    on<_Started>(_onStarted);
    on<_DreamSaved>(_onDreamSaved);
  }

  Future<FutureOr<void>> _onDreamSaved(
      _DreamSaved event, Emitter<DreamsState> emit) async {
    emit(state.copyWith(dreamSaveStatus: const ActionState.inProgress()));

    var either = await _dreamsRepository.saveDream(event.journeyId);

    either.fold(
        (l) => emit(state.copyWith(
            dreamSaveStatus:
                const ActionState.failure("Failed to save dream"))), (r) {
      emit(state.copyWith(
          dreamSaveStatus: const ActionState.success(message: "Dream saved")));
      emit(state.copyWith(dreamSaveStatus: const ActionState.idle()));
    });
  }

  Future<FutureOr<void>> _onStarted(
      _Started event, Emitter<DreamsState> emit) async {
    emit(state.copyWith(dreamsStatus: const ActionState.inProgress()));
    await _dreamsRepository.getDreams().then((either) {
      either.fold(
          (l) => emit(state.copyWith(
              dreamsStatus:
                  const ActionState.failure("Failed to load dreams"))), (r) {
        emit(state.copyWith(
            dreams: r.sortedBy((dream) => dream.created, descending: true),
            dreamsStatus: const ActionState.success()));
        emit(state.copyWith(dreamsStatus: const ActionState.idle()));
      });
    });
  }
}
