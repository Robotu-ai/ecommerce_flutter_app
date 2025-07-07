// lib/features/cart/domain/entities/cart_item.dart

import 'package:equatable/equatable.dart';

class CartItem extends Equatable {
  final String sellerProductId;
  final int quantity;

  const CartItem({
    required this.sellerProductId,
    required this.quantity,
  });

  @override
  List<Object?> get props => [sellerProductId, quantity];
}