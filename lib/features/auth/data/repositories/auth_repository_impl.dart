import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:dtoro/core/error/exceptions.dart';
import 'package:dtoro/features/auth/data/datasources/auth_local_datasource.dart';
import 'package:dtoro/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:dtoro/features/auth/data/models/user_model.dart';
import 'package:dtoro/features/auth/domain/entities/auth_state.dart';
import 'package:dtoro/features/auth/domain/entities/login_request.dart';
import 'package:dtoro/features/auth/domain/repositories/auth_repository.dart';
import 'package:dtoro/features/user/domain/entities/user_entity.dart';

class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl(
    this._remoteDataSource,
    this._localDataSource,
    this._firestore,
  );

  final AuthRemoteDataSource _remoteDataSource;
  final AuthLocalDataSource _localDataSource;
  final FirebaseFirestore _firestore;

  StreamController<AuthState>? _authStateController;

  @override
  Stream<AuthState> get authStateStream {
    _authStateController ??= StreamController<AuthState>.broadcast();
    
    _remoteDataSource.authStateChanges.listen((firebaseUser) async {
      if (firebaseUser == null) {
        await _localDataSource.clearCache();
        _authStateController!.add(const AuthStateUnauthenticated());
      } else {
        try {
          final user = await _fetchUserFromFirestore(firebaseUser.uid);
          await _localDataSource.cacheUser(user);
          _authStateController!.add(AuthStateAuthenticated(user));
        } catch (e) {
          _authStateController!.add(AuthStateError(e.toString()));
        }
      }
    });

    return _authStateController!.stream;
  }

  @override
  Future<UserEntity> signInWithEmailAndPassword(LoginRequest request) async {
    try {
      final credential = await _remoteDataSource.signInWithEmailAndPassword(request);
      final user = await _fetchUserFromFirestore(credential.user!.uid);
      await _localDataSource.cacheUser(user);
      return user;
    } on FirebaseAuthException catch (e) {
      throw AuthException(_mapFirebaseAuthError(e.code));
    } catch (e) {
      throw AuthException('Error inesperado durante el login');
    }
  }

  @override
  Future<void> signOut() async {
    try {
      await _remoteDataSource.signOut();
      await _localDataSource.clearCache();
    } catch (e) {
      throw AuthException('Error al cerrar sesión');
    }
  }

  @override
  Future<UserEntity?> getCurrentUser() async {
    final firebaseUser = _remoteDataSource.currentUser;
    if (firebaseUser == null) return null;

    // Intentar obtener del cache primero
    final cachedUser = await _localDataSource.getCachedUser();
    if (cachedUser != null) return cachedUser;

    // Si no está en cache, obtener de Firestore
    try {
      final user = await _fetchUserFromFirestore(firebaseUser.uid);
      await _localDataSource.cacheUser(user);
      return user;
    } catch (e) {
      return null;
    }
  }

  @override
  Future<void> refreshToken() async {
    try {
      await _remoteDataSource.refreshIdToken();
    } catch (e) {
      throw AuthException('Error al refrescar token');
    }
  }

  Future<UserEntity> _fetchUserFromFirestore(String uid) async {
    try {
      final doc = await _firestore.collection('users').doc(uid).get();
      if (!doc.exists) {
        throw AuthException('Usuario no encontrado en la base de datos');
      }
      final userModel = UserModel.fromFirestore(doc);
      return userModel.toEntity();
    } catch (e) {
      if (e is AuthException) rethrow;
      throw AuthException('Error al obtener datos del usuario');
    }
  }

  String _mapFirebaseAuthError(String code) {
    switch (code) {
      case 'user-not-found':
        return 'Usuario no encontrado';
      case 'wrong-password':
        return 'Contraseña incorrecta';
      case 'invalid-email':
        return 'Email inválido';
      case 'user-disabled':
        return 'Usuario deshabilitado';
      case 'too-many-requests':
        return 'Demasiados intentos. Intenta más tarde';
      default:
        return 'Error de autenticación';
    }
  }

  void dispose() {
    _authStateController?.close();
  }
}