// lib/core/converters/timestamp_converter.dart
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

class TimestampConverter implements JsonConverter<Timestamp, Object> {
  const TimestampConverter();

  @override
  Timestamp fromJson(Object json) {
    if (json is Timestamp) return json;
    if (json is Map<String, dynamic>) {
      return Timestamp(json['_seconds'], json['_nanoseconds']);
    }
    throw ArgumentError('Cannot convert $json to Timestamp');
  }

  @override
  Object toJson(Timestamp timestamp) => timestamp;
}