import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_item_model.freezed.dart';
part 'cart_item_model.g.dart';

@freezed
sealed class CartItemModel with _$CartItemModel {

  const CartItemModel._();

  const factory CartItemModel({
    required String id,               // sellerProductId
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
}
