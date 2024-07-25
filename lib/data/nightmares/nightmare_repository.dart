import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:wakefully_analyzer/data/contracts/script_flip.dart';

import '../../core/failure.dart';
import 'nightmare_data_source.dart';

@lazySingleton
class NightmareRepository {
  final NightmareDataSource _nightmareDataSource;
  final Logger _logger;

  NightmareRepository(this._nightmareDataSource, this._logger);

  Future<Either<Failure, String?>> getLatestScriptFlip() async {
    try {
      final scriptFlip = await _nightmareDataSource.getLatestScriptFlip();
      return Right(scriptFlip);
    } on DioException catch (e) {
      _logger.e(e.toString());
      return const Left(Failure("Failed to get latest script flip"));
    }
  }

  Future<Either<Failure, Unit>> createScriptFlip(
      String content, String journeyId) async {
    try {
      await _nightmareDataSource.createScriptFlip(content, journeyId);
      return const Right(unit);
    } on DioException catch (e) {
      _logger.e(e.toString());
      return const Left(Failure("Failed to create script flip"));
    }
  }

  Future<Either<Failure, List<ScriptFlip>>> getMyScriptFlips() async {
    try {
      final scriptFlips = await _nightmareDataSource.getMyScriptFlips();
      return Right(scriptFlips);
    } on DioException catch (e) {
      _logger.e(e.toString());
      return const Left(Failure("Failed to get my script flips"));
    }
  }
}
