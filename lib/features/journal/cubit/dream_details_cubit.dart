import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wakefully_analyzer/core/page_state.dart';
import 'package:wakefully_analyzer/data/dreams/dreams_repository.dart';

import '../../../data/contracts/dream_details.dart';

part 'dream_details_cubit.freezed.dart';
part 'dream_details_state.dart';

@injectable
class DreamDetailsCubit extends Cubit<DreamDetailsState> {
  final DreamsRepository dreamsRepository;
  final String dreamId;

  DreamDetailsCubit(@factoryParam this.dreamId, this.dreamsRepository)
      : super(const DreamDetailsState()) {
    getDreamDetails();
  }

  void getDreamDetails() async {
    emit(state.copyWith(pageStatus: const PageState.loading()));
    var either = await dreamsRepository.getDreamDetails(dreamId);
    either.fold(
        (error) => emit(state.copyWith(
            pageStatus: PageState.failure(message: error.message))),
        (details) => emit(state.copyWith(
            pageStatus: const PageState.success(), details: details)));
  }
}
