// lib/features/cart/domain/repositories/cart_repository.dart
import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../../../catalog/domain/entities/product_reference.dart';
import '../entities/cart.dart';
import '../entities/cart_item.dart';
import '../entities/cart_with_items.dart';

abstract class CartRepository {
  Stream<Either<Failure, CartWithItems?>> watchActiveCart(String userId);
  Future<Either<Failure, Cart>> createCart(String userId, String zoneId);
  Future<Either<Failure, void>> addToCart(String cartId, ProductReference product, int quantity);
  Future<Either<Failure, void>> updateQuantity(String cartId, String sellerProductId, int quantity);
  Future<Either<Failure, void>> removeFromCart(String cartId, String sellerProductId);
  Future<Either<Failure, void>> clearCart(String cartId);
  Future<Either<Failure, void>> checkoutCart(String cartId);
  Future<Either<Failure, void>> fillFromPreviousOrder(String userId, String zoneId, List<Map<String, dynamic>> items);
  
  // Utility methods
  double calculateTotal(List<CartItem> items, List<ProductReference> products);
  Map<String, List<CartItem>> groupItemsBySeller(List<CartItem> items, List<ProductReference> products);
  String formatPrice(double price, String unitType);
}