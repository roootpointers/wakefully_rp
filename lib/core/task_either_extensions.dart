import 'package:dartz/dartz.dart';
import 'package:logger/logger.dart';

import 'failure.dart';

extension TaskX<T extends Either<Object, U>, U> on Task<T> {
  Task<Either<Failure, U>> mapLeftToFailure({
    String? message,
    Logger? logger,
  }) {
    return map(
      (either) => either.leftMap((obj) {
        var rawError = obj.toString();
        logger?.e(rawError);
        return Failure(message ?? rawError);
      }),
    );
  }

  Task<Either<Failure, U>> mapLeftToFailureWithMapper(
      {required String Function(dynamic error) messageMap, Logger? logger}) {
    return map(
      (either) => either.leftMap((obj) {
        var rawError = obj.toString();
        logger?.e(rawError);

        var message = messageMap(obj);

        return Failure(message);
      }),
    );
  }
}
