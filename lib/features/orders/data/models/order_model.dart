import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dtoro/core/converters/timestamp_converter.dart';

part 'order_model.freezed.dart';
part 'order_model.g.dart';

enum OrderStatus { created, confirmed, fulfilled }

@freezed
sealed class OrderModel with _$OrderModel {

  const OrderModel._();

  const factory OrderModel({
    required String id,               // ORD_0001_20250618
    required String userId,
    required String zoneId,
    required OrderStatus status,
    required num total,
    required String currency,
    @TimestampConverter() required Timestamp createdAt,
  }) = _OrderModel;

  factory OrderModel.fromJson(Map<String, Object?> json) =>
      _$OrderModelFromJson(json);

  factory OrderModel.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> doc,
  ) =>
      OrderModel.fromJson({'id': doc.id, ...doc.data()!});

  Map<String, Object?> toDocument() => toJson()..remove('id');
}
