import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

import '../../../core/failure.dart';
import '../../../data/contracts/dream_type.dart';
import '../contracts/dream.dart';
import '../contracts/dream_details.dart';
import 'dreams_data_source.dart';

abstract class DreamsRepository {
  Future<Either<Failure, List<Dream>>> getDreams();
  Future<Either<Failure, Dream?>> getLatestDream();
  Future<Either<Failure, void>> saveDream(String journeyId);
  Future<Either<Failure, List<DreamType>>> getDreamTypes();
  Future<Either<Failure, DreamDetails>> getDreamDetails(String dreamId);
}

@Injectable(as: DreamsRepository)
class DreamsRepositoryImpl extends DreamsRepository {
  final DreamsDataSource _dreamsDataSource;
  final Logger _logger;

  DreamsRepositoryImpl(this._dreamsDataSource, this._logger);

  @override
  Future<Either<Failure, List<Dream>>> getDreams() async {
    try {
      var dreams = await _dreamsDataSource.getDreams();
      return Right(dreams);
    } on DioException catch (e) {
      if (e.response?.statusCode == 404) {
        return const Right([]);
      }
      _logger.e(e.toString());
      return Left(Failure(e.toString()));
    } on Exception catch (e) {
      _logger.e(e.toString());
      return Left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<DreamType>>> getDreamTypes() async {
    try {
      var dreamTypes = await _dreamsDataSource.getDreamTypes();
      return Right(dreamTypes);
    } on Exception catch (e) {
      _logger.e(e.toString());
      return Left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Dream?>> getLatestDream() async {
    try {
      var dream = await _dreamsDataSource.getLatestDream();
      return Right(dream);
    } on DioException catch (e) {
      if (e.response?.statusCode == 404) {
        return const Right(null);
      }
      _logger.e(e.toString());
      return Left(Failure(e.toString()));
    } on Exception catch (e) {
      _logger.e(e.toString());
      return Left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> saveDream(String journeyId) async {
    try {
      await _dreamsDataSource.saveDream(journeyId);
      return const Right(null);
    } on Exception catch (e) {
      _logger.e(e.toString());
      return Left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, DreamDetails>> getDreamDetails(String dreamId) async {
    try {
      var details = await _dreamsDataSource.getDreamDetails(dreamId);
      return Right(details);
    } on Exception catch (e) {
      _logger.e(e.toString());
      return Left(Failure(e.toString()));
    }
  }
}
