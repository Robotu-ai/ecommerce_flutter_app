// lib/features/cart/domain/entities/cart_status_entity.dart

import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum CartStatusEntity {
  active,
  checkedOut,
}