import 'package:injectable/injectable.dart';
import 'package:wakefully_analyzer/core/authentication/authenticated_user.dart';

import '../authentication_data_source.dart';
import 'firebase_auth_facade.dart';

@singleton
class FirebaseAuthDataSource implements AuthenticationDataSource {
  final FirebaseAuthFacade firebaseAuth;

  FirebaseAuthDataSource(FirebaseAuthFacade firebaseAuth)
      : firebaseAuth = FirebaseAuthFacade();

  @override
  Future<void> createAccount(
      {required String email,
      required String password,
      String? displayName}) async {
    await firebaseAuth.createAccount(email, password, displayName: displayName);
  }

  @override
  Future<void> login({required String email, required String password}) async {
    await firebaseAuth.login(email: email, password: password);
  }

  @override
  Future<void> logout() async {
    await firebaseAuth.logout();
  }

  @override
  Future<void> refreshIdToken() async => await firebaseAuth.refreshIdToken();

  @override
  Future<String?> getIdToken() async => await firebaseAuth.getIdToken();

  @override
  Stream<AuthenticatedUser?> get authenticatedUser =>
      firebaseAuth.authenticatedUser;

  @override
  Future<void> updateEmail(String email) async =>
      await firebaseAuth.updateEmail(email);

  @override
  Future<void> updateName(String name) async =>
      await firebaseAuth.updateName(name);

  @override
  Future<void> deactivateAccount(String email, String password) async {
    await firebaseAuth.deactivateAccount(email, password);
  }

  @override
  Future forgotPassword(String email) async {
    await firebaseAuth.forgotPassword(email);
  }

  @override
  Future<void> confirmPasswordReset(String code, String newPassword) async {
    await firebaseAuth.confirmPasswordReset(code, newPassword);
  }
}
