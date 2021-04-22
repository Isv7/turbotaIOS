import 'dart:convert';
import 'dart:math';
import 'package:crypto/crypto.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

import 'package:firebase_auth/firebase_auth.dart' as firebaseAuth;

class AuthenticationProvider {
  final firebaseAuth.FirebaseAuth _auth = firebaseAuth.FirebaseAuth.instance;

  AuthenticationProvider();

  Stream<firebaseAuth.User> get streamAuthStateChanged =>
      _auth.authStateChanges();

  Future signInWithPhone(
      phone,
      firebaseAuth.FirebaseAuth _auth,
      firebaseAuth.PhoneVerificationCompleted verificationCompleted,
      firebaseAuth.PhoneVerificationFailed verificationFailed,
      firebaseAuth.PhoneCodeSent codeSent,
      firebaseAuth.PhoneCodeAutoRetrievalTimeout
          codeAutoRetrievalTimeout) async {
    try {
      await _auth.verifyPhoneNumber(
          phoneNumber: phone,
          timeout: const Duration(seconds: 5),
          verificationCompleted: verificationCompleted,
          verificationFailed: verificationFailed,
          codeSent: codeSent,
          codeAutoRetrievalTimeout: codeAutoRetrievalTimeout);
    } catch (err) {
      print(err);
    }
  }

  Future<Map<String, dynamic>> checkConfirmPhoneCode(code, id) async {
    try {
      final firebaseAuth.AuthCredential credential =
          firebaseAuth.PhoneAuthProvider.credential(
        verificationId: id,
        smsCode: code,
      );
      await _auth.signInWithCredential(credential);
      return {"error": null};
    } catch (e) {
      return {"error": e};
    }
  }

  /// Generates a cryptographically secure random nonce, to be included in a
  /// credential request.
  String generateNonce([int length = 32]) {
    final charset =
        '0123456789ABCDEFGHIJKLMNOPQRSTUVXYZabcdefghijklmnopqrstuvwxyz-._';
    final random = Random.secure();
    return List.generate(length, (_) => charset[random.nextInt(charset.length)])
        .join();
  }

  /// Returns the sha256 hash of [input] in hex notation.
  String sha256ofString(String input) {
    final bytes = utf8.encode(input);
    final digest = sha256.convert(bytes);
    return digest.toString();
  }

  Future<firebaseAuth.User> signInWithApple() async {
    // To prevent replay attacks with the credential returned from Apple, we
    // include a nonce in the credential request. When signing in in with
    // Firebase, the nonce in the id token returned by Apple, is expected to
    // match the sha256 hash of `rawNonce`.
    final rawNonce = generateNonce();
    final nonce = sha256ofString(rawNonce);
    //var serverRedirectURL = "https://turbota-f9606.firebaseapp.com/__/auth/handler";
    var redirectURL = "https://turbota.webit.top/callbacks/sign_in_with_apple";
    var clientID = "ua.turbota.app.service";
    firebaseAuth.User firebaseUser;

    try {
      // Request credential for the currently signed in Apple account.
      final appleCredential = await SignInWithApple.getAppleIDCredential(
          scopes: [
            AppleIDAuthorizationScopes.email,
            AppleIDAuthorizationScopes.fullName,
          ],
          webAuthenticationOptions: WebAuthenticationOptions(
              clientId: clientID, redirectUri: Uri.parse(redirectURL)),
          nonce: nonce,
          state: "turbota");

      print(appleCredential.authorizationCode);

      // Create an `OAuthCredential` from the credential returned by Apple.
      final oauthCredential =
          firebaseAuth.OAuthProvider("apple.com").credential(
        idToken: appleCredential.identityToken,
        rawNonce: rawNonce,
      );

      // Sign in the user with Firebase. If the nonce we generated earlier does
      // not match the nonce in `appleCredential.identityToken`, sign in will fail.
      final authResult = await _auth.signInWithCredential(oauthCredential);

      final displayName =
          '${appleCredential.givenName} ${appleCredential.familyName}';
      final userEmail = '${appleCredential.email}';
      firebaseUser = authResult.user;
      print(displayName);
      print(userEmail);
    } catch (exception) {
      print(exception);
      rethrow;
    }
    return firebaseUser;
  }

  Future<void> signOutUser() async {
    return Future.wait([
      _auth.signOut(),
    ]);
  }

  Future<firebaseAuth.User> getCurrentFirebaseUser() async {
    firebaseAuth.User user = _auth.currentUser;
    return user; //retrieve the current Firebase user
  }

  Future<bool> isLoggedIn() async {
    firebaseAuth.User user =
        _auth.currentUser; //check if user is logged in or not
    return user != null;
  }

  void dispose() {}
}
