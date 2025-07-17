import 'package:dtoro/core/usecases/usecase.dart';
import 'package:dtoro/features/auth/domain/repositories/auth_repository.dart';

class SignOutUseCase implements UseCase<void, NoParams> {
  const SignOutUseCase(this._repository);

  final AuthRepository _repository;

  @override
  Future<void> call(NoParams params) async {
    return await _repository.signOut();
  }
}