import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:wakefully_analyzer/core/authentication/authenticated_user.dart';

import '../../failure.dart';

@lazySingleton
class FirebaseAuthFacade {
  FirebaseAuth auth = FirebaseAuth.instance;

  Future<void> createAccount(String email, String password,
      {String? displayName}) async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);

      if (displayName != null) {
        await auth.currentUser!.updateDisplayName(displayName);
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        throw const Failure('The password provided is too weak');
      } else if (e.code == 'email-already-in-use') {
        throw const Failure('The account already exists for that email');
      }
    }
  }

  Future<void> login({required String email, required String password}) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'invalid-email') {
        throw const Failure('The email is invalid');
      } else if (e.code == 'user-disabled') {
        throw const Failure('This user has been disabled');
      } else if (e.code == 'user-not-found') {
        throw const Failure('There is no account for this email');
      } else if (e.code == 'wrong-password') {
        throw const Failure('The password is invalid');
      } else if (e.code == 'too-many-requests') {
        throw const Failure(
            'We have blocked all requests from this device due to unusual activity. Try again later.');
      } else {
        throw const Failure('Unable to login');
      }
    }
  }

  Future<void> updateEmail(String email) async {
    var currentUser = auth.currentUser;
    if (currentUser == null) return;

    await currentUser.updateEmail(email);
  }

  Future<void> updateName(String name) async {
    var currentUser = auth.currentUser;
    if (currentUser == null) return;

    await currentUser.updateDisplayName(name);
  }

  Future<void> logout() async {
    await auth.signOut();
  }

  Future<void> refreshIdToken() async {
    await auth.currentUser!.getIdTokenResult(true);
  }

  Future<String?> getIdToken() async {
    var currentUser = auth.currentUser;
    if (currentUser == null) return null;

    return await currentUser.getIdToken();
  }

  Stream<AuthenticatedUser?> get authenticatedUser =>
      auth.userChanges().asyncMap((firebaseUser) async {
        return firebaseUser == null
            ? null
            : AuthenticatedUser(
                id: firebaseUser.uid,
                email: firebaseUser.email,
                displayName: firebaseUser.displayName);
      });

  Future<void> deactivateAccount(String email, String password) async {
    try {
      var currentUser = auth.currentUser;
      if (currentUser == null) return;

      var credential =
          EmailAuthProvider.credential(email: email, password: password);
      await currentUser.reauthenticateWithCredential(credential);

      return currentUser.delete();
    } on FirebaseAuthException catch (e) {
      if (e.code == 'wrong-password') {
        throw const Failure('The password is invalid');
      } else if (e.code == 'invalid-email' || e.code == 'user-not-found') {
        throw const Failure('The email is invalid');
      } else {
        throw const Failure('Unable to deactivate account');
      }
    } on Exception {
      throw const Failure('Unable to deactivate account');
    }
  }

  Future<void> forgotPassword(String email) {
    return auth.sendPasswordResetEmail(email: email);
  }

  Future<void> confirmPasswordReset(String code, String newPassword) {
    return auth.confirmPasswordReset(code: code, newPassword: newPassword);
  }
}
