// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrderModel _$OrderModelFromJson(Map<String, dynamic> json) => _OrderModel(
      id: json['id'] as String,
      userId: json['userId'] as String,
      zoneId: json['zoneId'] as String,
      status: $enumDecode(_$OrderStatusEnumMap, json['status']),
      total: json['total'] as num,
      currency: json['currency'] as String,
      createdAt:
          const TimestampConverter().fromJson(json['createdAt'] as Object),
    );

Map<String, dynamic> _$OrderModelToJson(_OrderModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'zoneId': instance.zoneId,
      'status': _$OrderStatusEnumMap[instance.status]!,
      'total': instance.total,
      'currency': instance.currency,
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
    };

const _$OrderStatusEnumMap = {
  OrderStatus.created: 'created',
  OrderStatus.confirmed: 'confirmed',
  OrderStatus.fulfilled: 'fulfilled',
};
