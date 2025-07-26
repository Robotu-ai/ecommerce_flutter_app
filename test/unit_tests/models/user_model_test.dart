import 'package:flutter_test/flutter_test.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dtoro/features/auth/data/models/user_model.dart';
import 'package:dtoro/features/user/domain/entities/user_entity.dart';

void main() {
  group('UserModel', () {
    const userEntity = UserEntity(
      id: 'u1',
      displayName: 'Test',
      email: 'test@example.com',
      role: UserRole.chef,
      companyId: 'c1',
      createdAt: DateTime.utc(2024, 1, 1),
    );

    test('fromEntity and toEntity are symmetric', () {
      final model = UserModel.fromEntity(userEntity);
      expect(model.toEntity(), equals(userEntity));
    });

    test('toJson and fromJson are symmetric', () {
      final model = UserModel.fromEntity(userEntity);
      final json = model.toJson();
      final rebuilt = UserModel.fromJson(json);
      expect(rebuilt, equals(model));
    });
  });
}
