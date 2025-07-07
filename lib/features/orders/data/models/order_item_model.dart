import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dtoro/core/enums/unit_type.dart';

part 'order_item_model.freezed.dart';
part 'order_item_model.g.dart';

@freezed
sealed class OrderItemModel with _$OrderItemModel {

  const OrderItemModel._();

  const factory OrderItemModel({
    required String id,               // sellerProductId
    required String sellerProductId,
    required String nameSnap,
    required num unitPriceSnap,
    required num quantity,
    required UnitType unitType,
  }) = _OrderItemModel;

  factory OrderItemModel.fromJson(Map<String, Object?> json) =>
      _$OrderItemModelFromJson(json);

  factory OrderItemModel.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> doc,
  ) =>
      OrderItemModel.fromJson({'id': doc.id, ...doc.data()!});

  Map<String, Object?> toDocument() => toJson()..remove('id');
}
