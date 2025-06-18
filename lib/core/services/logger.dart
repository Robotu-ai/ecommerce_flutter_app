// lib/core/services/logger.dart
import 'dart:developer' as developer;
import 'package:flutter/foundation.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';

/// Centralized app logger that routes messages to both
/// Dart's developer log (for debug builds) and Firebase Crashlytics.
class AppLogger {
  const AppLogger._();

  /// Debug-level messages. Only sent to Dart developer log in debug mode,
  /// but always recorded in Crashlytics.
  static void debug(Object? message) {
    if (kDebugMode) {
      developer.log(message.toString(), name: 'DEBUG');
    }
    FirebaseCrashlytics.instance.log('DEBUG: $message');
  }

  /// Informational messages.
  static void info(Object? message) {
    developer.log(message.toString(), name: 'INFO');
    FirebaseCrashlytics.instance.log('INFO: $message');
  }

  /// Warning-level messages.
  static void warning(Object? message) {
    developer.log(message.toString(), name: 'WARNING', level: 900);
    FirebaseCrashlytics.instance.log('WARNING: $message');
  }

  /// Error-level messages. Records the error and optional stack trace in Crashlytics.
  static void error(
    Object? message,
    [Object? error,
    StackTrace? stackTrace],
  ) {
    developer.log(message.toString(), name: 'ERROR', level: 1000);
    if (error != null || stackTrace != null) {
      FirebaseCrashlytics.instance.recordError(
        error ?? message,
        stackTrace,
        reason: message.toString(),
      );
    } else {
      FirebaseCrashlytics.instance.log('ERROR: $message');
    }
  }
}

