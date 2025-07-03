// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seller_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SellerContact _$SellerContactFromJson(Map<String, dynamic> json) =>
    _SellerContact(
      phone: json['phone'] as String,
      email: json['email'] as String,
    );

Map<String, dynamic> _$SellerContactToJson(_SellerContact instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'email': instance.email,
    };

_SellerModel _$SellerModelFromJson(Map<String, dynamic> json) => _SellerModel(
      id: json['id'] as String,
      name: json['name'] as String,
      logoUrl: json['logoUrl'] as String,
      contact: SellerContact.fromJson(json['contact'] as Map<String, dynamic>),
      zones: (json['zones'] as List<dynamic>).map((e) => e as String).toList(),
      active: json['active'] as bool,
    );

Map<String, dynamic> _$SellerModelToJson(_SellerModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logoUrl': instance.logoUrl,
      'contact': instance.contact,
      'zones': instance.zones,
      'active': instance.active,
    };
