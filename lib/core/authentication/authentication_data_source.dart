import 'authenticated_user.dart';

abstract class AuthenticationDataSource {
  Stream<AuthenticatedUser?> get authenticatedUser;
  Future<void> createAccount(
      {required String email, required String password, String? displayName});
  Future<void> login({required String email, required String password});
  Future<void> logout();
  Future<String?> getIdToken();
  Future<void> refreshIdToken();
  Future<void> updateEmail(String email);
  Future<void> updateName(String name);
  Future<void> deactivateAccount(String email, String password);

  Future<void> forgotPassword(String email);
  Future<void> confirmPasswordReset(String code, String newPassword);
}
