// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_movement_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StockMovementModel _$StockMovementModelFromJson(Map<String, dynamic> json) =>
    _StockMovementModel(
      id: json['id'] as String,
      type: $enumDecode(_$MovementTypeEnumMap, json['type']),
      qty: json['qty'] as num,
      note: json['note'] as String,
      ts: const TimestampConverter().fromJson(json['ts'] as Object),
    );

Map<String, dynamic> _$StockMovementModelToJson(_StockMovementModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$MovementTypeEnumMap[instance.type]!,
      'qty': instance.qty,
      'note': instance.note,
      'ts': const TimestampConverter().toJson(instance.ts),
    };

const _$MovementTypeEnumMap = {
  MovementType.in_: 'in_',
  MovementType.out: 'out',
};
