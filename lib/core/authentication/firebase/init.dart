import 'package:firebase_core/firebase_core.dart';

Future<void> wakefullyFirebaseInit(FirebaseOptions? options) async {
  await Firebase.initializeApp(options: options);
}
