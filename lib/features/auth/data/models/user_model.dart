import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dtoro/core/converters/timestamp_converter.dart';
import 'package:dtoro/features/user/domain/entities/user_entity.dart';
part 'user_model.freezed.dart';
part 'user_model.g.dart';


@freezed
sealed class UserModel with _$UserModel {
  const UserModel._();

  const factory UserModel({
    required String id,
    required String displayName,
    required String email,
    required UserRole role,
    String? companyId,
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

  /* -------- Domain Conversion -------- */
  UserEntity toEntity() {
    return UserEntity(
      id: id,
      displayName: displayName,
      email: email,
      role: UserRole.values.firstWhere((e) => e.name == role.name),
      companyId: companyId,
      createdAt: createdAt.toDate(),
    );
  }

  factory UserModel.fromEntity(UserEntity entity) {
    return UserModel(
      id: entity.id,
      displayName: entity.displayName,
      email: entity.email,
      role: UserRole.values.firstWhere((e) => e.name == entity.role.name),
      companyId: entity.companyId,
      createdAt: Timestamp.fromDate(entity.createdAt),
    );
  }
}