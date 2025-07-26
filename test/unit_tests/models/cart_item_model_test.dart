import 'package:flutter_test/flutter_test.dart';
import 'package:dtoro/features/cart/data/models/cart_item_model.dart';

void main() {
  group('CartItemModel', () {
    test('create uses sellerProductId as id', () {
      final model = CartItemModel.create(sellerProductId: 'sp1', quantity: 2);
      expect(model.id, 'sp1');
      expect(model.sellerProductId, 'sp1');
      expect(model.quantity, 2);
    });

    test('toEntity converts correctly', () {
      const model = CartItemModel(id: 'sp1', sellerProductId: 'sp1', quantity: 3);
      final entity = model.toEntity();
      expect(entity.sellerProductId, 'sp1');
      expect(entity.quantity, 3);
    });
  });
}
