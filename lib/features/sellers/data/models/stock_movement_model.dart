import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dtoro/core/converters/timestamp_converter.dart';

part 'stock_movement_model.freezed.dart';
part 'stock_movement_model.g.dart';

enum MovementType { in_, out }   // “in” es palabra reservada

@freezed
sealed class StockMovementModel with _$StockMovementModel {

  const StockMovementModel._();

  const factory StockMovementModel({
    required String id,
    required MovementType type,
    required num qty,
    required String note,
    @TimestampConverter() required Timestamp ts,
  }) = _StockMovementModel;

  factory StockMovementModel.fromJson(Map<String, Object?> json) =>
      _$StockMovementModelFromJson(json);

  factory StockMovementModel.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> doc,
  ) =>
      StockMovementModel.fromJson({'id': doc.id, ...doc.data()!});

  Map<String, Object?> toDocument() => toJson()..remove('id');
}
