// lib/core/error/exceptions.dart

class ServerException implements Exception {
  final String message;
  final int? statusCode;
  final dynamic data;

  const ServerException(
    this.message, {
    this.statusCode,
    this.data,
  });

  @override
  String toString() => 'ServerException: $message';
}

class CacheException implements Exception {
  final String message;

  const CacheException(this.message);

  @override
  String toString() => 'CacheException: $message';
}

class NetworkException implements Exception {
  final String message;

  const NetworkException(this.message);

  @override
  String toString() => 'NetworkException: $message';
}

class ValidationException implements Exception {
  final String message;
  final Map<String, List<String>>? errors;

  const ValidationException(
    this.message, {
    this.errors,
  });

  @override
  String toString() => 'ValidationException: $message';
}

class AuthException implements Exception {
  final String message;
  final String? code;

  const AuthException(
    this.message, {
    this.code,
  });

  @override
  String toString() => 'AuthException: $message';
}

class PermissionException implements Exception {
  final String message;

  const PermissionException(this.message);

  @override
  String toString() => 'PermissionException: $message';
}

class NotFoundException implements Exception {
  final String message;

  const NotFoundException(this.message);

  @override
  String toString() => 'NotFoundException: $message';
}

class TimeoutException implements Exception {
  final String message;

  const TimeoutException(this.message);

  @override
  String toString() => 'TimeoutException: $message';
}

class FirestoreException implements Exception {
  final String message;
  final String? code;

  const FirestoreException(
    this.message, {
    this.code,
  });

  @override
  String toString() => 'FirestoreException: $message';
}

class CloudFunctionException implements Exception {
  final String message;
  final String? code;
  final dynamic details;

  const CloudFunctionException(
    this.message, {
    this.code,
    this.details,
  });

  @override
  String toString() => 'CloudFunctionException: $message';
}