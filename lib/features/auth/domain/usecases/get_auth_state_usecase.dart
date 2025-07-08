import 'package:dtoro/features/auth/domain/entities/auth_state.dart';
import 'package:dtoro/features/auth/domain/repositories/auth_repository.dart';

class GetAuthStateUseCase {
  const GetAuthStateUseCase(this._repository);

  final AuthRepository _repository;

  Stream<AuthState> call() {
    return _repository.authStateStream;
  }
}