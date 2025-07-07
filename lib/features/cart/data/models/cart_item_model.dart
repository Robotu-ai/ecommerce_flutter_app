// lib/features/cart/data/models/cart_item_model.dart
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/cart_item.dart';

part 'cart_item_model.freezed.dart';
part 'cart_item_model.g.dart';

@freezed
sealed class CartItemModel with _$CartItemModel {
  const CartItemModel._();

  const factory CartItemModel({
    required String id,               // sellerProductId
    required String sellerProductId,
    required num quantity,
  }) = _CartItemModel;

  factory CartItemModel.fromJson(Map<String, Object?> json) =>
      _$CartItemModelFromJson(json);

  factory CartItemModel.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> doc,
  ) =>
      CartItemModel.fromJson({'id': doc.id, ...doc.data()!});

  Map<String, Object?> toDocument() => toJson()..remove('id');

  // Conversion to domain entity
  CartItem toEntity() {
    return CartItem(
      sellerProductId: sellerProductId,
      quantity: quantity.toInt(),
    );
  }

  // Factory method for creating new cart item
  factory CartItemModel.create({
    required String sellerProductId,
    required int quantity,
  }) {
    return CartItemModel(
      id: sellerProductId,
      sellerProductId: sellerProductId,
      quantity: quantity,
    );
  }
}
