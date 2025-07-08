import 'package:dtoro/core/usecases/usecase.dart';
import 'package:dtoro/features/auth/domain/entities/login_request.dart';
import 'package:dtoro/features/auth/domain/repositories/auth_repository.dart';
import 'package:dtoro/features/user/domain/entities/user_entity.dart';

class SignInUseCase implements UseCase<UserEntity, LoginRequest> {
  const SignInUseCase(this._repository);

  final AuthRepository _repository;

  @override
  Future<UserEntity> call(LoginRequest params) async {
    return await _repository.signInWithEmailAndPassword(params);
  }
}