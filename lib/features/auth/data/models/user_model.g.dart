// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserModel _$UserModelFromJson(Map<String, dynamic> json) => _UserModel(
      id: json['id'] as String,
      displayName: json['displayName'] as String,
      email: json['email'] as String,
      role: $enumDecode(_$UserRoleEnumMap, json['role']),
      companyId: json['companyId'] as String?,
      createdAt:
          const TimestampConverter().fromJson(json['createdAt'] as Object),
    );

Map<String, dynamic> _$UserModelToJson(_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'displayName': instance.displayName,
      'email': instance.email,
      'role': _$UserRoleEnumMap[instance.role]!,
      'companyId': instance.companyId,
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
    };

const _$UserRoleEnumMap = {
  UserRole.chef: 'chef',
  UserRole.seller: 'seller',
  UserRole.admin: 'admin',
};
