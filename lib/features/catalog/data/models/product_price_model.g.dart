// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_price_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductPriceModel _$ProductPriceModelFromJson(Map<String, dynamic> json) =>
    _ProductPriceModel(
      id: json['id'] as String,
      sellerId: json['sellerId'] as String,
      sellerName: json['sellerName'] as String,
      price: json['price'] as num,
      currency: json['currency'] as String,
      zoneId: json['zoneId'] as String,
      updatedAt:
          const TimestampConverter().fromJson(json['updatedAt'] as Object),
    );

Map<String, dynamic> _$ProductPriceModelToJson(_ProductPriceModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sellerId': instance.sellerId,
      'sellerName': instance.sellerName,
      'price': instance.price,
      'currency': instance.currency,
      'zoneId': instance.zoneId,
      'updatedAt': const TimestampConverter().toJson(instance.updatedAt),
    };
