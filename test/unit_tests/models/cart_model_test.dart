import 'package:flutter_test/flutter_test.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dtoro/features/cart/data/models/cart_model.dart';
import 'package:dtoro/features/cart/domain/entities/cart_status.dart';

void main() {
  group('CartModel', () {
    test('create sets id using userId and status', () {
      final model = CartModel.create(userId: 'u1', zoneId: 'z1');
      expect(model.id, 'u1_active');
      expect(model.status, CartStatus.active);
    });

    test('toEntity converts correctly', () {
      final ts = Timestamp.now();
      final model = CartModel(
        id: 'u1_active',
        userId: 'u1',
        zoneId: 'z1',
        status: CartStatus.active,
        updatedAt: ts,
      );
      final entity = model.toEntity();
      expect(entity.id, model.id);
      expect(entity.userId, model.userId);
      expect(entity.zoneId, model.zoneId);
      expect(entity.status, CartStatusEntity.active);
      expect(entity.updatedAt, ts.toDate());
    });
  });
}
