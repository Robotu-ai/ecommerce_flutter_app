import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dtoro/core/converters/unit_type_converter.dart';
import 'package:dtoro/core/converters/timestamp_converter.dart';

part 'seller_product_model.freezed.dart';
part 'seller_product_model.g.dart';


@freezed
sealed class SellerProductModel with _$SellerProductModel {

  const SellerProductModel._();

  const factory SellerProductModel({
    required String id,                 // sellerProductId
    String? productRefId,
    required String name,
    required UnitType unitType,
    required num unitQuantity,
    required num inventoryCurrent,
    required List<String> availableZones,
    required num price,
    required String currency,
    required bool active,
    @TimestampConverter() required Timestamp updatedAt,
  }) = _SellerProductModel;

  factory SellerProductModel.fromJson(Map<String, Object?> json) =>
      _$SellerProductModelFromJson(json);

  factory SellerProductModel.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> doc,
  ) =>
      SellerProductModel.fromJson({'id': doc.id, ...doc.data()!});

  Map<String, Object?> toDocument() => toJson()..remove('id');
}
