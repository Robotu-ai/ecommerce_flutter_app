import 'package:flutter/material.dart';
import 'core/theme.dart';
import 'home_wrapper.dart';

class DToroApp extends StatelessWidget {
  const DToroApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'dToro Marketplace',
      theme: AppTheme.light,
      darkTheme: AppTheme.light,
      themeMode: ThemeMode.system,
      home: const HomeWrapper(),
      debugShowCheckedModeBanner: false,
    );
  }
}