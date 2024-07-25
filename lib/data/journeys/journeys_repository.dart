import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wakefully_analyzer/data/contracts/flow_block.dart';

import '../../core/failure.dart';
import '../contracts/blob.dart';
import 'journeys_data_source.dart';

abstract class JourneysRepository {
  Future<Either<Failure, List<Blob>>> getMyBlobs();
  Future<Either<Failure, Blob?>> getLatestDreamBlob();
  Future<Either<Failure, FlowBlock>> continueJourney(String id);
}

@Injectable(as: JourneysRepository)
class JourneysRepositoryImpl extends JourneysRepository {
  final JourneysDataSource _journeysDataSource;

  JourneysRepositoryImpl(this._journeysDataSource);

  @override
  Future<Either<Failure, List<Blob>>> getMyBlobs() async {
    try {
      var response = await _journeysDataSource.getMyBlobs();
      return Right(response);
    } on Exception catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Blob?>> getLatestDreamBlob() {
    try {
      return _journeysDataSource
          .getLatestDreamBlob()
          .then((value) => Right(value));
    } on Exception catch (e) {
      return Future.value(Left(Failure(e.toString())));
    }
  }

  @override
  Future<Either<Failure, FlowBlock>> continueJourney(String id) {
    try {
      return _journeysDataSource
          .continueJourney(id)
          .then((value) => Right(value));
    } on Exception catch (e) {
      return Future.value(Left(Failure(e.toString())));
    }
  }
}
