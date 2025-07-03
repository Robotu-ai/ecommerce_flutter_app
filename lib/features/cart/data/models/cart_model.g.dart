// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CartModel _$CartModelFromJson(Map<String, dynamic> json) => _CartModel(
      id: json['id'] as String,
      userId: json['userId'] as String,
      zoneId: json['zoneId'] as String,
      status: $enumDecode(_$CartStatusEnumMap, json['status']),
      createdAt:
          const TimestampConverter().fromJson(json['createdAt'] as Object),
    );

Map<String, dynamic> _$CartModelToJson(_CartModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'zoneId': instance.zoneId,
      'status': _$CartStatusEnumMap[instance.status]!,
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
    };

const _$CartStatusEnumMap = {
  CartStatus.active: 'active',
  CartStatus.checked_out: 'checked_out',
};
