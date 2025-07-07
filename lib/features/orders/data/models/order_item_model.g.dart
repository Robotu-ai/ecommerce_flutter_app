// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrderItemModel _$OrderItemModelFromJson(Map<String, dynamic> json) =>
    _OrderItemModel(
      id: json['id'] as String,
      sellerProductId: json['sellerProductId'] as String,
      nameSnap: json['nameSnap'] as String,
      unitPriceSnap: json['unitPriceSnap'] as num,
      quantity: json['quantity'] as num,
      unitType: $enumDecode(_$UnitTypeEnumMap, json['unitType']),
    );

Map<String, dynamic> _$OrderItemModelToJson(_OrderItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sellerProductId': instance.sellerProductId,
      'nameSnap': instance.nameSnap,
      'unitPriceSnap': instance.unitPriceSnap,
      'quantity': instance.quantity,
      'unitType': _$UnitTypeEnumMap[instance.unitType]!,
    };

const _$UnitTypeEnumMap = {
  UnitType.kg: 'kg',
  UnitType.lb: 'lb',
  UnitType.piece: 'piece',
};
