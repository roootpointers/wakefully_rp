import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:wakefully_analyzer/core/authentication/authenticated_user.dart';

import '../../failure.dart';
import '../authentication_data_source.dart';
import '../authentication_repository.dart';
import 'firebase_auth_data_source.dart';
import 'firebase_auth_facade.dart';

@Singleton(as: AuthenticationRepository)
class FirebaseAuthenticationRepository implements AuthenticationRepository {
  final AuthenticationDataSource dataSource;
  final Logger _logger;

  FirebaseAuthenticationRepository(this._logger)
      : dataSource = FirebaseAuthDataSource(FirebaseAuthFacade());

  FirebaseAuthenticationRepository.dataSource(this.dataSource, this._logger);

  @override
  Future<Either<Failure, void>> createAccount(
      {required String email,
      required String password,
      String? displayName}) async {
    try {
      await dataSource.createAccount(
          email: email, password: password, displayName: displayName);
      return const Right(null);
    } on Failure catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<Failure, void>> login(
      {required String email, required String password}) async {
    try {
      await dataSource.login(email: email, password: password);
      return const Right(null);
    } on Failure catch (e) {
      return Left(e);
    }
  }

  @override
  Future<void> logout() async {
    await dataSource.logout();
  }

  @override
  Future<void> refreshIdToken() async {
    await dataSource.refreshIdToken();
  }

  @override
  Future<String?> getIdToken() async {
    return await dataSource.getIdToken();
  }

  @override
  Stream<AuthenticatedUser?> get authenticatedUser =>
      dataSource.authenticatedUser;

  @override
  Future<Either<Failure, void>> updateEmail(String email) async {
    try {
      await dataSource.updateEmail(email);
      return const Right(null);
    } on Exception catch (e) {
      _logger.e(e.toString());
      return Left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> updateName(String name) async {
    try {
      await dataSource.updateName(name);
      return const Right(null);
    } on Exception catch (e) {
      _logger.e(e.toString());
      return Left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> deactivateAccount(
      String email, String password) async {
    try {
      await dataSource.deactivateAccount(email, password);
      return const Right(null);
    } on Failure catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<Failure, void>> forgotPassword(String email) async {
    try {
      await dataSource.forgotPassword(email);
      return const Right(null);
    } on Exception catch (e) {
      _logger.e(e.toString());
      return Left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> confirmPasswordReset(
      String code, String newPassword) async {
    try {
      await dataSource.confirmPasswordReset(code, newPassword);
      return const Right(null);
    } on Exception catch (e) {
      _logger.e(e.toString());
      return Left(Failure(e.toString()));
    }
  }
}
