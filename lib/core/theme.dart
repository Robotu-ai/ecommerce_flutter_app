// app_theme.dart
import 'package:flutter/material.dart';
import 'colors.dart';

class AppTheme {
  static final light = ThemeData(
    useMaterial3: true,
    colorScheme: const ColorScheme(
      // 1) BRIGHTNESS & ACCENTS
      brightness: Brightness.light,
      primary: mdThemePrimary,
      onPrimary: mdThemeOnPrimary,
      primaryContainer: mdThemePrimaryContainer,
      onPrimaryContainer: mdThemeOnPrimaryContainer,

      secondary: mdThemeSecondary,
      onSecondary: mdThemeOnSecondary,
      secondaryContainer: mdThemeSecondaryContainer,
      onSecondaryContainer: mdThemeOnSecondaryContainer,

      tertiary: mdThemeTertiary,
      onTertiary: mdThemeOnTertiary,
      tertiaryContainer: mdThemeTertiaryContainer,
      onTertiaryContainer: mdThemeOnTertiaryContainer,

      error: mdThemeError,
      onError: mdThemeOnError,
      errorContainer: mdThemeErrorContainer,
      onErrorContainer: mdThemeOnErrorContainer,

      // 2) SUPERFICIES & TEXTOS
      surface: mdThemeSurface,
      onSurface: mdThemeOnSurface,

      // 3) TONOS DE SUPERFICIE (Material 3)
      surfaceBright: mdThemeSurfaceContainerLowest,
      surfaceDim: mdThemeSurfaceContainerHigh,
      surfaceContainerLowest: mdThemeSurfaceContainerLowest,
      surfaceContainerLow: mdThemeSurfaceContainerLow,
      surfaceContainer: mdThemeSurfaceContainer,
      surfaceContainerHigh: mdThemeSurfaceContainerHigh,
      surfaceContainerHighest: mdThemeSurfaceContainerHighest,

      // 4) VARIANTES Y BORDES
      onSurfaceVariant: mdThemeOnSurfaceVariant,
      outline: mdThemeOutline,
      outlineVariant: mdThemeOutlineVariant,

      // 5) SOMBRAS, SCRIM y TINT
      shadow: Colors.black,
      scrim: Colors.black,
      surfaceTint: mdThemePrimary,

      // 6) INVERSIONES
      inverseSurface: mdThemeInverseSurface,
      onInverseSurface: mdThemeOnInverseSurface,
      inversePrimary: mdThemeInversePrimary,
    ),
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: mdThemeSurface,
      indicatorColor: mdThemePrimary,
      labelTextStyle: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return const TextStyle(color: mdThemeOnPrimaryContainer);
        }
        return const TextStyle(color: mdThemeOnSurfaceVariant);
      }),
      iconTheme: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return const IconThemeData(color: mdThemeOnPrimary);
        }
        return const IconThemeData(color: mdThemeOnSurfaceVariant);
      }),
    ),
  );
}
