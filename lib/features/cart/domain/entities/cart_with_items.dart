// lib/features/cart/domain/entities/cart_with_items.dart

import 'package:equatable/equatable.dart';
import 'cart.dart';
import 'cart_item.dart';

class CartWithItems extends Equatable {
  final Cart cart;
  final List<CartItem> items;

  const CartWithItems({
    required this.cart,
    required this.items,
  });

  bool get isEmpty => items.isEmpty;
  int get totalItems => items.fold(0, (sum, item) => sum + item.quantity);

  @override
  List<Object?> get props => [cart, items];
}