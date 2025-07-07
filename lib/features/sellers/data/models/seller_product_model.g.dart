// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seller_product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SellerProductModel _$SellerProductModelFromJson(Map<String, dynamic> json) =>
    _SellerProductModel(
      id: json['id'] as String,
      productRefId: json['productRefId'] as String?,
      name: json['name'] as String,
      unitType: $enumDecode(_$UnitTypeEnumMap, json['unitType']),
      unitQuantity: json['unitQuantity'] as num,
      inventoryCurrent: json['inventoryCurrent'] as num,
      availableZones: (json['availableZones'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      price: json['price'] as num,
      currency: json['currency'] as String,
      active: json['active'] as bool,
      updatedAt:
          const TimestampConverter().fromJson(json['updatedAt'] as Object),
    );

Map<String, dynamic> _$SellerProductModelToJson(_SellerProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'productRefId': instance.productRefId,
      'name': instance.name,
      'unitType': _$UnitTypeEnumMap[instance.unitType]!,
      'unitQuantity': instance.unitQuantity,
      'inventoryCurrent': instance.inventoryCurrent,
      'availableZones': instance.availableZones,
      'price': instance.price,
      'currency': instance.currency,
      'active': instance.active,
      'updatedAt': const TimestampConverter().toJson(instance.updatedAt),
    };

const _$UnitTypeEnumMap = {
  UnitType.kg: 'kg',
  UnitType.lb: 'lb',
  UnitType.piece: 'piece',
};
