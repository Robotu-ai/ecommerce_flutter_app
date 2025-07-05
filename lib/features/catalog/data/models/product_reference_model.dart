// lib/features/catalog/data/models/product_reference_model.dart

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dtoro/core/converters/timestamp_converter.dart';
import 'package:dtoro/core/enums/unit_type.dart';
import 'package:dtoro/features/catalog/domain/entities/catalog_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_reference_model.freezed.dart';
part 'product_reference_model.g.dart';

@freezed
sealed class BestPrice with _$BestPrice {

  const BestPrice._();

  @JsonSerializable(explicitToJson: true)
  const factory BestPrice({
    required String sellerId,
    required String sellerName,
    required String sellerProductId,
    required num price,
    required String currency,
    required String zoneId,
  }) = _BestPrice;

  factory BestPrice.fromJson(Map<String, dynamic> json) =>
      _$BestPriceFromJson(json);
}

@freezed
sealed class ProductReferenceModel with _$ProductReferenceModel {

  const ProductReferenceModel._();

  @JsonSerializable(explicitToJson: true)
  const factory ProductReferenceModel({
    required String id,               // productRefId
    required String name,
    required String categoryId,
    required String subCategoryId,
    required String description,
    required String imageUrl,
    required UnitType unitType,
    required CatalogState catalogState,
    required num catalogPriority,
    required BestPrice bestPrice,
    required String? label,
    @TimestampConverter() required Timestamp createdAt,
  }) = _ProductReferenceModel;

  factory ProductReferenceModel.fromJson(Map<String, dynamic> json) =>
      _$ProductReferenceModelFromJson(json);

  factory ProductReferenceModel.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> doc,
  ) =>
      ProductReferenceModel.fromJson({
        'id': doc.id,
        ...doc.data()!,
      });

  Map<String, dynamic> toDocument() => toJson()..remove('id');
}
