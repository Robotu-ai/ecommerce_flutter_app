import 'package:dtoro/features/auth/domain/entities/auth_state.dart';
import 'package:dtoro/features/auth/domain/entities/login_request.dart';
import 'package:dtoro/features/user/domain/entities/user_entity.dart';

abstract class AuthRepository {
  Stream<AuthState> get authStateStream;
  Future<UserEntity> signInWithEmailAndPassword(LoginRequest request);
  Future<void> signOut();
  Future<UserEntity?> getCurrentUser();
  Future<void> refreshToken();
}