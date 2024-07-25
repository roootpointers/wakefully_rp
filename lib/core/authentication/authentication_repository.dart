import 'package:dartz/dartz.dart';
import 'package:wakefully_analyzer/core/authentication/authenticated_user.dart';

import '../failure.dart';

abstract class AuthenticationRepository {
  Stream<AuthenticatedUser?> get authenticatedUser;
  Future<Either<Failure, void>> createAccount(
      {required String email, required String password, String? displayName});
  Future<Either<Failure, void>> login(
      {required String email, required String password});
  Future<void> logout();
  Future<void> refreshIdToken();
  Future<String?> getIdToken();
  Future<Either<Failure, void>> updateEmail(String email);
  Future<Either<Failure, void>> updateName(String name);
  Future<Either<Failure, void>> deactivateAccount(
      String email, String password);
  Future<Either<Failure, void>> forgotPassword(String email);
  Future<Either<Failure, void>> confirmPasswordReset(
      String code, String newPassword);
}
