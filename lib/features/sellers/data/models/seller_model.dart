import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'seller_model.freezed.dart';
part 'seller_model.g.dart';

@freezed
sealed class SellerContact with _$SellerContact {

  const SellerContact._();

  const factory SellerContact({
    required String phone,
    required String email,
  }) = _SellerContact;

  factory SellerContact.fromJson(Map<String, Object?> json) =>
      _$SellerContactFromJson(json);
}

@freezed
sealed class SellerModel with _$SellerModel {

  const SellerModel._();

  const factory SellerModel({
    required String id,                       // docId (“meatco”)
    required String name,
    required String logoUrl,
    required SellerContact contact,
    required List<String> zones,
    required bool active,
  }) = _SellerModel;

  factory SellerModel.fromJson(Map<String, Object?> json) =>
      _$SellerModelFromJson(json);

  factory SellerModel.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> doc,
  ) =>
      SellerModel.fromJson({'id': doc.id, ...doc.data()!});

  Map<String, Object?> toDocument() => toJson()..remove('id');
}
