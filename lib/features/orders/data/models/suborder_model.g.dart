// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'suborder_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SuborderModel _$SuborderModelFromJson(Map<String, dynamic> json) =>
    _SuborderModel(
      id: json['id'] as String,
      sellerId: json['sellerId'] as String,
      status: $enumDecode(_$SuborderStatusEnumMap, json['status']),
      subtotal: json['subtotal'] as num,
      shippingCost: json['shippingCost'] as num,
      createdAt:
          const TimestampConverter().fromJson(json['createdAt'] as Object),
    );

Map<String, dynamic> _$SuborderModelToJson(_SuborderModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sellerId': instance.sellerId,
      'status': _$SuborderStatusEnumMap[instance.status]!,
      'subtotal': instance.subtotal,
      'shippingCost': instance.shippingCost,
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
    };

const _$SuborderStatusEnumMap = {
  SuborderStatus.created: 'created',
  SuborderStatus.accepted: 'accepted',
  SuborderStatus.ready_to_ship: 'ready_to_ship',
  SuborderStatus.shipped: 'shipped',
  SuborderStatus.delivered: 'delivered',
};
