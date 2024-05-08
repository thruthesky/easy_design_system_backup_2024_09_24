import 'package:flutter/material.dart';

/// ComicThemeData
///
/// [ComicThemeData] is a class that holds the color scheme for the Comic theme.
class ComicThemeData {
  ComicThemeData({required this.colorScheme});

  final ColorScheme colorScheme;

  /// of
  ///
  /// [of] is a method that returns a [ThemeData] object with the color scheme
  static ThemeData of(BuildContext context) {
    final theme = Theme.of(context);
    return ThemeData(
      listTileTheme: theme.listTileTheme.copyWith(
        tileColor: theme.colorScheme.surface,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
          side: BorderSide(color: theme.colorScheme.secondary, width: 2),
        ),
      ),
    );
  }
}

/// ComicTheme
///
/// [ComicTheme] is a class that returns a [Theme] widget with the [ComicThemeData] object
class ComicTheme extends StatelessWidget {
  const ComicTheme({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ComicThemeData.of(context),
      child: child,
    );
  }
}
