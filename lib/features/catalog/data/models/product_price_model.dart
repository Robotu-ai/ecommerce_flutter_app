import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dtoro/core/converters/timestamp_converter.dart';

part 'product_price_model.freezed.dart';
part 'product_price_model.g.dart';

@freezed
sealed class ProductPriceModel with _$ProductPriceModel {

  const ProductPriceModel._();

  const factory ProductPriceModel({
    required String id,                 // ${sellerId}_${zoneId}
    required String sellerId,
    required String sellerName,
    required num price,
    required String currency,
    required String zoneId,
    @TimestampConverter() required Timestamp updatedAt,
  }) = _ProductPriceModel;

  factory ProductPriceModel.fromJson(Map<String, Object?> json) =>
      _$ProductPriceModelFromJson(json);

  factory ProductPriceModel.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> doc,
  ) =>
      ProductPriceModel.fromJson({'id': doc.id, ...doc.data()!});

  Map<String, Object?> toDocument() => toJson()..remove('id');
}
