// lib/features/cart/domain/entities/cart.dart
// lib/features/cart/domain/entities/cart.dart

import 'package:equatable/equatable.dart';
import 'cart_status_entity.dart';

class Cart extends Equatable {
  final String id;
  final String userId;
  final String zoneId;
  final CartStatusEntity status;
  final DateTime updatedAt;

  const Cart({
    required this.id,
    required this.userId,
    required this.zoneId,
    required this.status,
    required this.updatedAt,
  });

  @override
  List<Object?> get props => [id, userId, zoneId, status, updatedAt];
}