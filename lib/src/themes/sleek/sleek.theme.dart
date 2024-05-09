import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/// SleekThemeData
///
/// [SleekThemeData] is a class that holds the color scheme for the Comic theme.
class SleekThemeData {
  SleekThemeData({required this.colorScheme});

  final ColorScheme colorScheme;

  /// of
  ///
  /// [of] is a method that returns a [ThemeData] object with the color scheme
  static ThemeData of(BuildContext context) {
    final theme = Theme.of(context);
    return ThemeData(
      colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: Color(0xff03a9f4),
        onPrimary: Colors.white,
        primaryContainer: Color(0xffb2ebf5),
        onPrimaryContainer: Color(0xff003c8f),
        secondary: Color(0xff00bcd4),
        onSecondary: Colors.black,
        secondaryContainer: Color(0xffb2ebf5),
        onSecondaryContainer: Color(0xff00678b),
        error: Color(0xffd32f2f),
        onError: Colors.white,
        errorContainer: Color(0xfff2b8b5),
        onErrorContainer: Color(0xff470001),
        background: Color(0xfffcfcfc),
        onBackground: Color(0xff1f1f1f),
        surface: Color(0xfffcfcfc),
        onSurface: Color(0xff1f1f1f),
        surfaceVariant: Color(0xffdad7d7),
        onSurfaceVariant: Color(0xff49454f),
        outline: Color(0xff707070),
        outlineVariant: Color(0xff49454f),
        shadow: Color(0xff000000),
        scrim: Color(0xff000000),
        inverseSurface: Color(0xfff4eff4),
        onInverseSurface: Color(0xff333039),
        inversePrimary: Color(0xff03a9f4),
        surfaceTint: Color(0xff03a9f4),
      ),
      // textTheme: const TextTheme(
      // bodyLarge: TextStyle(
      //   color: Colors.red,
      //   fontSize: 20,
      // ),
      // bodyMedium: TextStyle(
      //   color: Colors.red,
      //   fontSize: 20,
      // ),
      // bodySmall: TextStyle(
      //   color: Colors.red,
      //   fontSize: 20,
      // ),
      // titleLarge: TextStyle(
      //   color: Colors.red,
      //   fontSize: 20,
      // ),
      // titleMedium: TextStyle(
      //   color: Colors.red,
      //   fontSize: 20,
      // ),
      // titleSmall: TextStyle(
      //   color: Colors.red,
      //   fontSize: 20,
      // ),
      // labelLarge: TextStyle(
      //   color: Colors.red,
      //   fontSize: 20,
      // ),
      // labelMedium: TextStyle(
      //   color: Colors.red,
      //   fontSize: 20,
      // ),
      // labelSmall: TextStyle(
      //   color: Colors.red,
      //   fontSize: 20,
      // ),
      // displayLarge: TextStyle(
      //   color: Colors.red,
      //   fontSize: 20,
      // ),
      // displayMedium: TextStyle(
      //   color: Colors.red,
      //   fontSize: 20,
      // ),
      // displaySmall: TextStyle(
      //   color: Colors.red,
      //   fontSize: 20,
      // ),
      // headlineLarge: TextStyle(
      //   color: Colors.red,
      //   fontSize: 20,
      // ),
      // headlineMedium: TextStyle(
      //   color: Colors.red,
      //   fontSize: 20,
      // ),
      // headlineSmall: TextStyle(
      //   color: Colors.red,
      //   fontSize: 20,
      // ),
      // ),
    );
  }
}

/// SleekTheme
///
/// [SleekTheme] is a class that returns a [Theme] widget with the [SleekThemeData] object
class SleekTheme extends StatelessWidget {
  const SleekTheme({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: SleekThemeData.of(context),
      child: child,
    );
  }
}
