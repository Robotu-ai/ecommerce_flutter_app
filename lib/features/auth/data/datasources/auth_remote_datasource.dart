import 'package:firebase_auth/firebase_auth.dart';
import 'package:dtoro/core/services/auth_service.dart';
import 'package:dtoro/features/auth/domain/entities/login_request.dart';

abstract class AuthRemoteDataSource {
  Stream<User?> get authStateChanges;
  Future<UserCredential> signInWithEmailAndPassword(LoginRequest request);
  Future<void> signOut();
  User? get currentUser;
  Future<String?> refreshIdToken();
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  const AuthRemoteDataSourceImpl(this._authService);

  final AuthService _authService;

  @override
  Stream<User?> get authStateChanges => _authService.onAuthStateChanged;

  @override
  User? get currentUser => _authService.currentUser;

  @override
  Future<UserCredential> signInWithEmailAndPassword(LoginRequest request) {
    return _authService.signInWithEmailAndPassword(
      email: request.email,
      password: request.password,
    );
  }

  @override
  Future<void> signOut() {
    return _authService.signOut();
  }

  @override
  Future<String?> refreshIdToken() async {
    return _authService.refreshIdToken();
  }
}