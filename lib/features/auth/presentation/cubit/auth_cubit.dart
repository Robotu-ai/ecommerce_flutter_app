import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dtoro/core/usecases/usecase.dart';
import 'package:dtoro/features/auth/domain/entities/auth_state.dart';
import 'package:dtoro/features/auth/domain/entities/login_request.dart';
import 'package:dtoro/features/auth/domain/usecases/get_auth_state_usecase.dart';
import 'package:dtoro/features/auth/domain/usecases/sign_in_usecase.dart';
import 'package:dtoro/features/auth/domain/usecases/sign_out_usecase.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(
    this._getAuthStateUseCase,
    this._signInUseCase,
    this._signOutUseCase,
  ) : super(const AuthStateInitial()) {
    _initAuthListener();
  }

  final GetAuthStateUseCase _getAuthStateUseCase;
  final SignInUseCase _signInUseCase;
  final SignOutUseCase _signOutUseCase;

  void _initAuthListener() {
    _getAuthStateUseCase().listen((authState) {
      emit(authState);
    });
  }

  Future<void> signIn(String email, String password) async {
    emit(const AuthStateLoading());
    try {
      await _signInUseCase(LoginRequest(email: email, password: password));
      // El estado se actualizará automáticamente a través del stream
    } catch (e) {
      emit(AuthStateError(e.toString()));
    }
  }

  Future<void> signOut() async {
    try {
      await _signOutUseCase(const NoParams());
      // El estado se actualizará automáticamente a través del stream
    } catch (e) {
      emit(AuthStateError(e.toString()));
    }
  }
}