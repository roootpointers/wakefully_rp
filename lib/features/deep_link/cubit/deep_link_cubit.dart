import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wakefully_analyzer/data/contracts/flow_block.dart';
import 'package:wakefully_analyzer/data/flows/flows_repository.dart';
import 'package:wakefully_analyzer/features/deep_link/deep_link_params.dart';

import '../../../core/page_state.dart';
import '../../../data/flows/goto_flow_block_params.dart';

part 'deep_link_cubit.freezed.dart';
part 'deep_link_state.dart';

@injectable
class DeepLinkCubit extends Cubit<DeepLinkState> {
  final FlowsRepository _flowsRepository;

  DeepLinkCubit(this._flowsRepository) : super(const DeepLinkState());

  Future load(DeepLinkParams params) async {
    emit(state.copyWith(pageStatus: const PageState.loading()));

    var either = await _flowsRepository.gotoFlowBlock(GotoFlowBlockParams(
      parameters: params.parameters,
      flowId: params.flowId,
      flowBlockId: params.nextFlowBlockId,
    ));

    either.fold(
        (l) => emit(state.copyWith(
            title: "Dream Decoder",
            result: l.message,
            pageStatus: const PageState.failure())),
        handleSuccess);
  }

  void handleSuccess(FlowBlock flowBlock) {
    String? title = "Dream Decoder";

    if (flowBlock.flowId == 1) {
      title = flowBlock.parameters["dream_type"];
    }

    return emit(state.copyWith(
        title: title ?? "Dream Decoder",
        flowId: flowBlock.flowId,
        journeyId: flowBlock.journeyId,
        result: flowBlock.message.content!,
        pageStatus: const PageState.success()));
  }
}
