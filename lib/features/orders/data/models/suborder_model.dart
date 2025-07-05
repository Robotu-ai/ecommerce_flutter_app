import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dtoro/core/converters/timestamp_converter.dart';

part 'suborder_model.freezed.dart';
part 'suborder_model.g.dart';

enum SuborderStatus {
  created,
  accepted,
  ready_to_ship,
  shipped,
  delivered,
}

@freezed
sealed class SuborderModel with _$SuborderModel {

  const SuborderModel._();

  const factory SuborderModel({
    required String id,               // sellerId
    required String sellerId,
    required SuborderStatus status,
    required num subtotal,
    required num shippingCost,
    @TimestampConverter() required Timestamp createdAt,
  }) = _SuborderModel;

  factory SuborderModel.fromJson(Map<String, Object?> json) =>
      _$SuborderModelFromJson(json);

  factory SuborderModel.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> doc,
  ) =>
      SuborderModel.fromJson({'id': doc.id, ...doc.data()!});

  Map<String, Object?> toDocument() => toJson()..remove('id');
}
