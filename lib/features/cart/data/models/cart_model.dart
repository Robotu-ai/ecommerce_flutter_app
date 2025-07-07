// lib/features/cart/data/models/cart_model.dart
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dtoro/core/converters/timestamp_converter.dart';

import '../../domain/entities/cart.dart';
import '../../domain/entities/cart_status_entity.dart';

part 'cart_model.freezed.dart';
part 'cart_model.g.dart';

enum CartStatus { active, checked_out }

@freezed
sealed class CartModel with _$CartModel {
  const CartModel._();

  const factory CartModel({
    required String id,                 // ${userId}_<status>
    required String userId,
    required String zoneId,
    required CartStatus status,
    @TimestampConverter() required Timestamp updatedAt,
  }) = _CartModel;

  factory CartModel.fromJson(Map<String, Object?> json) =>
      _$CartModelFromJson(json);

  factory CartModel.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> doc,
  ) =>
      CartModel.fromJson({'id': doc.id, ...doc.data()!});

  Map<String, Object?> toDocument() => toJson()..remove('id');

  // Conversion to domain entity
  Cart toEntity() {
    return Cart(
      id: id,
      userId: userId,
      zoneId: zoneId,
      status: status == CartStatus.active 
        ? CartStatusEntity.active 
        : CartStatusEntity.checkedOut,
      updatedAt: updatedAt.toDate(),
    );
  }

  // Factory method for creating new cart
  factory CartModel.create({
    required String userId,
    required String zoneId,
    CartStatus status = CartStatus.active,
  }) {
    final cartId = '${userId}_${status.name}';
    return CartModel(
      id: cartId,
      userId: userId,
      zoneId: zoneId,
      status: status,
      updatedAt: Timestamp.now(),
    );
  }
}