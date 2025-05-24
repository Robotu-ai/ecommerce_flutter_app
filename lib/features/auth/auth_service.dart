import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';

class AuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  User? get currentUser => _firebaseAuth.currentUser;

  Future<User?> signInAnonymously() async {
    try {
      final UserCredential userCredential = await _firebaseAuth.signInAnonymously();
      return userCredential.user;
    }  catch (error, stackTrace) {
 FirebaseCrashlytics.instance.recordError(error, stackTrace, reason: 'Error signing in anonymously');
 return null;
    }
  }

  Future<User?> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return null; // The user canceled the sign-in
      }
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      final UserCredential userCredential =
          await _firebaseAuth.signInWithCredential(credential);
      return userCredential.user;
    } catch (e, stackTrace) {
 FirebaseCrashlytics.instance.recordError(e, stackTrace, reason: 'Error signing in with Google');
      rethrow;
    }
  }

  Future<User?> signInWithApple() async {
    try {
      final AuthorizationCredentialAppleID appleCredential =
          await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
      );

      final OAuthProvider appleProvider = OAuthProvider('apple.com');
      final AuthCredential credential = appleProvider.credential(
        idToken: appleCredential.identityToken,
        accessToken: appleCredential.authorizationCode,
      );

      final UserCredential userCredential =
          await _firebaseAuth.signInWithCredential(credential);
 return userCredential.user;
    } catch (e, stackTrace) {
       FirebaseCrashlytics.instance.recordError(e, stackTrace, reason: 'Error signing in with Apple: $e');

      rethrow;
    }
  }

  Future<User?> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      final UserCredential userCredential =
          await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user;
    } catch (e, stackTrace) {
 FirebaseCrashlytics.instance.recordError(e, stackTrace, reason: 'Error signing in with email and password');
      rethrow;
    }
  }

  Future<User?> registerWithEmailAndPassword(
      String email, String password) async {
    try {
      final UserCredential userCredential =
          await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user;
    } catch (e, stackTrace) {
 FirebaseCrashlytics.instance.recordError(e, stackTrace, reason: 'Error registering with email and password');
      rethrow;
    }
  }

  Future<void> signOut() async {
    try {
      await _firebaseAuth.signOut();
      await _googleSignIn.signOut(); // Also sign out from Google
    } catch (e, stackTrace) {
 FirebaseCrashlytics.instance.recordError(e, stackTrace, reason: 'Error signing out');
      rethrow;
    }
  }
}