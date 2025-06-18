// lib/core/services/auth_service.dart
import 'package:firebase_auth/firebase_auth.dart';

/// Thin wrapper around [FirebaseAuth] to keep the dependency contained.
///
/// Custom claims / role management live elsewhere (e.g., a
/// `UserRepository`).  This class only knows about auth mechanics.
class AuthService {
  AuthService(this._auth);

  final FirebaseAuth _auth;

  // ─────────────────────────── Streams ───────────────────────────────

  /// Emits the current [User] or `null` when the sign‑in state changes.
  Stream<User?> get onAuthStateChanged => _auth.authStateChanges();

  // ────────────────────────── Getters ────────────────────────────────

  User? get currentUser => _auth.currentUser;

  // ─────────────────────────── Methods ───────────────────────────────

  Future<UserCredential> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) =>
      _auth.signInWithEmailAndPassword(email: email, password: password);

  Future<UserCredential> createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) =>
      _auth.createUserWithEmailAndPassword(email: email, password: password);

  Future<void> signOut() => _auth.signOut();

  /// Refreshes ID token & custom claims.
  Future<String?>? refreshIdToken() => _auth.currentUser?.getIdToken(true);
}
