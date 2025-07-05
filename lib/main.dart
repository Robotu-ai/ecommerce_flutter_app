import 'package:dtoro/firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:dtoro/core/di/injector.dart';

import 'dart:ui';

import 'app.dart';
import 'core/firebase_config.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initDependencies();    // ← Registra todos tus servicios, repos, use-cases…
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
  PlatformDispatcher.instance.onError = (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    return true;
  };

  runApp(const DToroApp());
}
