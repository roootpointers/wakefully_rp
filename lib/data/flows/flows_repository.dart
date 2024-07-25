import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:wakefully_analyzer/data/flows/continue_flow_params.dart';
import 'package:wakefully_analyzer/data/flows/goto_flow_block_params.dart';

import '../../core/failure.dart';
import '../contracts/flow_block.dart';
import 'flows_data_source.dart';

@lazySingleton
class FlowsRepository {
  final FlowsDataSource _flowsDataSource;
  final Logger _logger;

  FlowsRepository(this._flowsDataSource, this._logger);

  Future<Either<Failure, FlowBlock>> startFlow(
      String idOrSlug, Map<String, String> parameters) async {
    try {
      final flowBlock = await _flowsDataSource.startFlow(idOrSlug, parameters);
      return Right(flowBlock);
    } on DioException catch (e) {
      _logger.e(e.toString());
      return const Left(Failure("Failed to start flow"));
    }
  }

  Future<Either<Failure, FlowBlock>> startFlowAt(
      String idOrSlug, int flowBlockId, Map<String, String> parameters) async {
    try {
      final flowBlock =
          await _flowsDataSource.startFlowAt(idOrSlug, flowBlockId, parameters);
      return Right(flowBlock);
    } on DioException catch (e) {
      _logger.e(e.toString());
      return const Left(Failure("Failed to start flow"));
    }
  }

  Future<Either<Failure, FlowBlock>> getNextFlowBlock(
      String idOrSlug, Map<String, String> parameters) async {
    try {
      final flowBlock =
          await _flowsDataSource.getNextFlowBlock(idOrSlug, parameters);
      return Right(flowBlock);
    } on DioException catch (e) {
      _logger.e(e.toString());
      return const Left(Failure("Failed to get next flow block"));
    }
  }

  Future<Either<Failure, FlowBlock>> continueFlow(
      ContinueFlowParams params) async {
    try {
      final flowBlock = await _flowsDataSource.continueFlow(params);
      return Right(flowBlock);
    } on DioException catch (e) {
      _logger.e(e.toString());
      return const Left(Failure("Failed to get next flow block"));
    }
  }

  Future<Either<Failure, FlowBlock>> gotoFlowBlock(
      GotoFlowBlockParams params) async {
    try {
      final flowBlock = await _flowsDataSource.gotoFlowBlock(params);
      return Right(flowBlock);
    } on DioException catch (e) {
      _logger.e(e.toString());
      return const Left(Failure("Failed to get next flow block"));
    }
  }
}
