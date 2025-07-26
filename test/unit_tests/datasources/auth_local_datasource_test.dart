import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:dtoro/features/auth/data/datasources/auth_local_datasource.dart';
import 'package:dtoro/features/user/domain/entities/user_entity.dart';

void main() {
  late SharedPreferences prefs;
  late AuthLocalDataSourceImpl dataSource;

  const user = UserEntity(
    id: 'u1',
    displayName: 'User',
    email: 'a',
    role: UserRole.chef,
    companyId: 'c1',
    createdAt: DateTime.utc(2024, 1, 1),
  );

  setUp(() async {
    SharedPreferences.setMockInitialValues({});
    prefs = await SharedPreferences.getInstance();
    dataSource = AuthLocalDataSourceImpl(prefs);
  });

  test('cache and retrieve user', () async {
    await dataSource.cacheUser(user);
    final result = await dataSource.getCachedUser();
    expect(result, user);
  });

  test('clearCache removes data', () async {
    await dataSource.cacheUser(user);
    await dataSource.clearCache();
    final result = await dataSource.getCachedUser();
    expect(result, isNull);
  });
}
