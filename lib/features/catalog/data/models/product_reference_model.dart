import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dtoro/core/converters/unit_type_converter.dart';
import 'package:dtoro/core/converters/timestamp_converter.dart';

part 'product_reference_model.freezed.dart';
part 'product_reference_model.g.dart';

enum CatalogState { approved, pending }

@freezed
sealed class BestPrice with _$BestPrice {

  const BestPrice._();

  const factory BestPrice({
    required String sellerId,
    required String sellerName,
    required String sellerProductId,
    required num price,
    required String currency,
    required String zoneId,
  }) = _BestPrice;

  factory BestPrice.fromJson(Map<String, Object?> json) =>
      _$BestPriceFromJson(json);
}

@freezed
sealed class ProductReferenceModel with _$ProductReferenceModel {

  const ProductReferenceModel._();

  const factory ProductReferenceModel({
    required String id, // productRefId
    required String name,
    required String categoryId,
    required String description,
    required String imageUrl,
    required UnitType unitType,
    required CatalogState catalogState,
    required num catalogPriority,
    BestPrice? bestPrice,
    @TimestampConverter() required Timestamp createdAt,
  }) = _ProductReferenceModel;

  factory ProductReferenceModel.fromJson(Map<String, Object?> json) =>
      _$ProductReferenceModelFromJson(json);

  factory ProductReferenceModel.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> doc,
  ) =>
      ProductReferenceModel.fromJson({'id': doc.id, ...doc.data()!});

  Map<String, Object?> toDocument() => toJson()..remove('id');
}
