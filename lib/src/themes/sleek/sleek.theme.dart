import 'package:flutter/material.dart';

/// SleekThemeData
///
/// [SleekThemeData] is a class that holds the color scheme for the Sleek theme.
class SleekThemeData {
  SleekThemeData();

  // final ColorScheme colorScheme;

  /// of
  ///
  /// [of] is a method that returns a [ThemeData] object with the color scheme
  static ThemeData of(BuildContext context) {
    final theme = Theme.of(context);
    return ThemeData(
      badgeTheme: BadgeThemeData(
        backgroundColor: theme.colorScheme.primary,
        textColor: theme.colorScheme.onPrimary,
        padding: const EdgeInsets.only(left: 5, right: 5),
      ),
      cardTheme: theme.cardTheme.copyWith(
        // TODO fix it with proper colorscheming
        // this color uses `surfaceContainerLow` from color scheme by default
        // color: theme.colorScheme.primary,
        elevation: 0,
        shape: RoundedRectangleBorder(
          side: BorderSide.none,
          borderRadius: BorderRadius.circular(24),
        ),
      ),
      colorScheme: Theme.of(context).colorScheme,
      dialogBackgroundColor: theme.colorScheme.primaryContainer,
      dialogTheme: DialogTheme(
        iconColor: theme.colorScheme.primary,
      ),
      checkboxTheme: CheckboxThemeData(
        side: BorderSide(
          color: theme.colorScheme.outline,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          elevation: WidgetStateProperty.all(0),
          foregroundColor: WidgetStateProperty.all(theme.colorScheme.onSurface),
          backgroundColor: WidgetStateProperty.all(
            theme.colorScheme.primaryContainer,
          ),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
          ),
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: theme.colorScheme.primaryContainer,
        elevation: 0,
        foregroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        highlightElevation: 0,
      ),
      inputDecorationTheme: theme.inputDecorationTheme.copyWith(
        filled: true,
        fillColor: theme.colorScheme.primaryContainer,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(24)),
          borderSide: BorderSide.none,
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(24)),
          borderSide: BorderSide.none,
        ),
      ),
      listTileTheme: theme.listTileTheme.copyWith(
        tileColor: theme.colorScheme.primaryContainer,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      ),
      progressIndicatorTheme: ProgressIndicatorThemeData(
        linearTrackColor: theme.colorScheme.primaryContainer.withAlpha(80),
      ),
      segmentedButtonTheme: SegmentedButtonThemeData(
        style: SegmentedButton.styleFrom(
          selectedBackgroundColor: theme.colorScheme.primary,
          selectedForegroundColor: theme.colorScheme.onPrimary,
          backgroundColor: theme.colorScheme.primaryContainer,
          side: BorderSide.none,
          elevation: 0,
        ),
      ),
      tabBarTheme: TabBarTheme(
        indicator: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          ),
          color: theme.colorScheme.primaryContainer,
        ),
        indicatorSize: TabBarIndicatorSize.tab,
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          foregroundColor: WidgetStateProperty.all(theme.colorScheme.onSurface),
          backgroundColor: WidgetStateProperty.all(
            theme.colorScheme.primaryContainer,
          ),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
          ),
        ),
      ),
      snackBarTheme: SnackBarThemeData(
        elevation: 0,
        backgroundColor: theme.colorScheme.primaryContainer,
        contentTextStyle: TextStyle(
          color: theme.colorScheme.onPrimaryContainer,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        actionTextColor: theme.colorScheme.primary,
      ),
    );
  }
}

/// SleekTheme
///
/// [SleekTheme] is a class that returns a [Theme] widget with the [SleekThemeData] object
class SleekTheme extends StatelessWidget {
  const SleekTheme({super.key, required this.child});

  final Widget child;

  static ThemeData of(BuildContext context) {
    return SleekThemeData.of(context);
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: SleekThemeData.of(context),
      child: child,
    );
  }
}
