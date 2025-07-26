import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:dtoro/features/auth/domain/usecases/sign_in_usecase.dart';
import 'package:dtoro/features/auth/domain/usecases/sign_out_usecase.dart';
import 'package:dtoro/features/auth/domain/usecases/get_auth_state_usecase.dart';
import 'package:dtoro/features/auth/domain/repositories/auth_repository.dart';
import 'package:dtoro/features/auth/domain/entities/login_request.dart';
import 'package:dtoro/features/auth/domain/entities/auth_state.dart';
import 'package:dtoro/features/user/domain/entities/user_entity.dart';
import 'package:dtoro/core/usecases/usecase.dart';

class MockAuthRepository extends Mock implements AuthRepository {}

void main() {
  late MockAuthRepository repository;
  late SignInUseCase signIn;
  late SignOutUseCase signOut;
  late GetAuthStateUseCase getAuthState;

  setUp(() {
    repository = MockAuthRepository();
    signIn = SignInUseCase(repository);
    signOut = SignOutUseCase(repository);
    getAuthState = GetAuthStateUseCase(repository);
  });

  test('SignInUseCase forwards call to repository', () async {
    final request = const LoginRequest(email: 'a', password: 'b');
    final user = UserEntity(
      id: 'u1',
      displayName: 'User',
      email: 'a',
      role: UserRole.chef,
      createdAt: DateTime.now(),
    );
    when(() => repository.signInWithEmailAndPassword(request))
        .thenAnswer((_) async => user);
    final result = await signIn(request);
    expect(result, user);
    verify(() => repository.signInWithEmailAndPassword(request)).called(1);
  });

  test('SignOutUseCase forwards call to repository', () async {
    when(() => repository.signOut()).thenAnswer((_) async {});
    await signOut(const NoParams());
    verify(() => repository.signOut()).called(1);
  });

  test('GetAuthStateUseCase returns stream from repository', () {
    final controller = StreamController<AuthState>();
    when(() => repository.authStateStream).thenAnswer((_) => controller.stream);
    expect(getAuthState(), controller.stream);
  });
}
