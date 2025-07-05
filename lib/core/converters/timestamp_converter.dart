// lib/core/converters/timestamp_converter.dart

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

class TimestampConverter implements JsonConverter<Timestamp, Object> {
  const TimestampConverter();

  @override
  Timestamp fromJson(Object json) {
    if (json is Timestamp) {
      return json;
    }
    if (json is Map<String, dynamic>) {
      // Cuando el JSON lo entrega como {_seconds:…, _nanoseconds:…}
      return Timestamp(json['_seconds'] as int, json['_nanoseconds'] as int);
    }
    if (json is String) {
      // Cuando viene como String ISO8601
      final dt = DateTime.parse(json);
      return Timestamp.fromDate(dt);
    }
    if (json is int) {
      // Si alguna vez viene como milisegundos
      return Timestamp.fromMillisecondsSinceEpoch(json);
    }
    throw ArgumentError('Cannot convert `$json` (${json.runtimeType}) to Timestamp');
  }

  @override
  Object toJson(Timestamp timestamp) {
    // Para Firestore, devolver el propio Timestamp
    return timestamp;
  }
}
