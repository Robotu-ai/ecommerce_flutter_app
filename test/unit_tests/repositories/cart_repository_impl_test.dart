
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:dtoro/features/cart/data/repositories/cart_repository_impl.dart';
import 'package:dtoro/features/cart/data/datasources/cart_remote_datasource.dart';
import 'package:dtoro/core/network/network_info.dart';
import 'package:dtoro/features/catalog/domain/entities/product_reference.dart';
import 'package:dtoro/features/catalog/domain/entities/best_price.dart';
import 'package:dtoro/core/enums/unit_type.dart';
import 'package:dtoro/features/catalog/domain/entities/catalog_state.dart';
import 'package:dtoro/features/cart/domain/entities/cart_item.dart';

class MockRemote extends Mock implements CartRemoteDataSource {}
class MockNetworkInfo extends Mock implements NetworkInfo {}

void main() {
  late CartRepositoryImpl repository;

  setUp(() {
    repository = CartRepositoryImpl(
      remoteDataSource: MockRemote(),
      networkInfo: MockNetworkInfo(),
    );
  });

  group('calculateTotal', () {
    test('returns correct total', () {
      final products = [
        ProductReference(
          id: 'p1',
          name: 'A',
          description: '',
          imageUrl: '',
          unitType: UnitType.kg,
          catalogPriority: 1,
          catalogState: CatalogState.approved,
          bestPrice: const BestPrice(
            sellerId: 's1',
            sellerName: 'S1',
            sellerProductId: 'sp1',
            price: 2.5,
            currency: 'USD',
            zoneId: 'z1',
          ),
          label: null,
        ),
        ProductReference(
          id: 'p2',
          name: 'B',
          description: '',
          imageUrl: '',
          unitType: UnitType.piece,
          catalogPriority: 1,
          catalogState: CatalogState.approved,
          bestPrice: const BestPrice(
            sellerId: 's2',
            sellerName: 'S2',
            sellerProductId: 'sp2',
            price: 4.0,
            currency: 'USD',
            zoneId: 'z1',
          ),
          label: null,
        ),
      ];
      final items = [
        const CartItem(sellerProductId: 'sp1', quantity: 2),
        const CartItem(sellerProductId: 'sp2', quantity: 1),
      ];
      final total = repository.calculateTotal(items, products);
      expect(total, closeTo(2 * 2.5 + 1 * 4.0, 0.001));
    });
  });

  group('groupItemsBySeller', () {
    test('groups items by sellerId', () {
      final products = [
        ProductReference(
          id: 'p1',
          name: 'A',
          description: '',
          imageUrl: '',
          unitType: UnitType.kg,
          catalogPriority: 1,
          catalogState: CatalogState.approved,
          bestPrice: const BestPrice(
            sellerId: 's1',
            sellerName: 'S1',
            sellerProductId: 'sp1',
            price: 2.5,
            currency: 'USD',
            zoneId: 'z1',
          ),
          label: null,
        ),
        ProductReference(
          id: 'p2',
          name: 'B',
          description: '',
          imageUrl: '',
          unitType: UnitType.kg,
          catalogPriority: 1,
          catalogState: CatalogState.approved,
          bestPrice: const BestPrice(
            sellerId: 's1',
            sellerName: 'S1',
            sellerProductId: 'sp2',
            price: 1.0,
            currency: 'USD',
            zoneId: 'z1',
          ),
          label: null,
        ),
      ];
      final items = [
        const CartItem(sellerProductId: 'sp1', quantity: 1),
        const CartItem(sellerProductId: 'sp2', quantity: 3),
      ];
      final grouped = repository.groupItemsBySeller(items, products);
      expect(grouped.keys, contains('s1'));
      expect(grouped['s1']!.length, 2);
    });
  });

  group('formatPrice', () {
    test('formats according to unit type', () {
      expect(repository.formatPrice(1.5, 'kg'), '\$1.50 / kg');
      expect(repository.formatPrice(2, 'lb'), '\$2.00 / lb');
      expect(repository.formatPrice(3, 'piece'), '\$3.00 / each');
      expect(repository.formatPrice(4, 'unknown'), '\$4.00');
    });
  });
}
