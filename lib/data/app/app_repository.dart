import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:wakefully_analyzer/data/app/app_data_source.dart';

import '../../core/failure.dart';
import '../contracts/version_info.dart';

@lazySingleton
class AppRepository {
  final AppDataSource _appDataSource;
  final Logger _logger;

  AppRepository(this._appDataSource, this._logger);

  Future<Either<Failure, VersionInfo>> getVersionInfo() async {
    try {
      final versionInfo = await _appDataSource.getVersionInfo();
      return Right(versionInfo);
    } on DioException catch (e) {
      _logger.e(e.toString());
      return const Left(Failure("Failed to get version info"));
    }
  }
}
