import 'package:firebase_auth/firebase_auth.dart';

import 'package:app/providers/AuthenticationProvider.dart';

class AuthenticationRepository {
  AuthenticationProvider authenticationProvider = AuthenticationProvider();

  Stream<dynamic> get streamAuthStateChanged =>
      authenticationProvider.streamAuthStateChanged;

  //Future<dynamic> signInWithGoogle() =>
  //    authenticationProvider.signInWithGoogle();

  Future signInWithPhone(
          String phone,
          FirebaseAuth _auth,
          PhoneVerificationCompleted verificationCompleted,
          PhoneVerificationFailed verificationFailed,
          PhoneCodeSent codeSent,
          PhoneCodeAutoRetrievalTimeout codeAutoRetrievalTimeout) =>
      authenticationProvider.signInWithPhone(
          phone,
          _auth,
          verificationCompleted,
          verificationFailed,
          codeSent,
          codeAutoRetrievalTimeout);

  Future<Map<String, dynamic>> checkConfirmPhoneCode(String code, String id) =>
      authenticationProvider.checkConfirmPhoneCode(code, id);

  Future<dynamic> signInWithApple() => authenticationProvider.signInWithApple();

  Future<void> signOutUser() => authenticationProvider.signOutUser();

  Future<dynamic> getCurrentFirebaseUser() =>
      authenticationProvider.getCurrentFirebaseUser();

  Future<bool> isLoggedIn() => authenticationProvider.isLoggedIn();

  void dispose() {
    authenticationProvider.dispose();
  }
}
