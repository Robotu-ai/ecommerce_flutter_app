import 'package:json_annotation/json_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum UnitType {
  kg,
  lb,
  piece,
}
