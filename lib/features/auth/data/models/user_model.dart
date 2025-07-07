import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dtoro/core/converters/timestamp_converter.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

enum UserRole { chef, seller, admin }

@freezed
sealed class UserModel with _$UserModel {

  const UserModel._();

  const factory UserModel({
    required String id, // ← docId (“chefCarlos”)
    required String displayName,
    required String email,
    required UserRole role,
    String? companyId, // solo para sellers
    @TimestampConverter() required Timestamp createdAt,
  }) = _UserModel;

  /* -------- Converters -------- */
  factory UserModel.fromJson(Map<String, Object?> json) =>
      _$UserModelFromJson(json);

  factory UserModel.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> doc,
  ) =>
      UserModel.fromJson({
        'id': doc.id,
        ...doc.data()!,
      });

  Map<String, Object?> toDocument() => toJson()..remove('id');
}
