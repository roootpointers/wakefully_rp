import 'package:injectable/injectable.dart';
import 'package:wakefully_analyzer/data/contracts/continue_flow_request.dart';
import 'package:wakefully_analyzer/data/contracts/flow_block.dart';
import 'package:wakefully_analyzer/data/flows/continue_flow_params.dart';
import 'package:wakefully_analyzer/data/flows/goto_flow_block_params.dart';

import '../contracts/goto_flow_block_request.dart';
import '../wakefully_api.dart';

abstract class FlowsDataSource {
  Future<FlowBlock> startFlow(String idOrSlug, Map<String, String> parameters);
  Future<FlowBlock> startFlowAt(
      String idOrSlug, int flowBlockId, Map<String, String> parameters);
  Future<FlowBlock> getNextFlowBlock(
      String idOrSlug, Map<String, String> parameters);
  Future<FlowBlock> continueFlow(ContinueFlowParams params);
  Future<FlowBlock> gotoFlowBlock(GotoFlowBlockParams params);
}

@LazySingleton(as: FlowsDataSource)
class FlowsDataSourceImpl implements FlowsDataSource {
  final WakefullyApi _wakefullyApi;

  FlowsDataSourceImpl(this._wakefullyApi);

  @override
  Future<FlowBlock> startFlow(String idOrSlug, Map<String, String> parameters) {
    return _wakefullyApi.startFlow(idOrSlug, parameters);
  }

  @override
  Future<FlowBlock> startFlowAt(
      String idOrSlug, int flowBlockId, Map<String, String> parameters) async {
    return await _wakefullyApi.startFlowAt(idOrSlug, flowBlockId, parameters);
  }

  @override
  Future<FlowBlock> getNextFlowBlock(
      String idOrSlug, Map<String, String> parameters) async {
    return await _wakefullyApi.getNextFlowBlock(idOrSlug, parameters);
  }

  @override
  Future<FlowBlock> continueFlow(ContinueFlowParams params) async {
    final request = ContinueFlowRequest(params.journeyId, params.parameters);

    return await _wakefullyApi.continueFlow(
        "${params.flowId}", params.step, request);
  }

  @override
  Future<FlowBlock> gotoFlowBlock(GotoFlowBlockParams params) async {
    final request = GotoFlowBlockRequest(
        params.journeyId, params.flowBlockId, params.parameters);

    return _wakefullyApi.gotoFlowBlock("${params.flowId}", request);
  }
}
