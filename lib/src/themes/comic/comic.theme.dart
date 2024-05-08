import 'package:flutter/material.dart';

class ComicThemeData {
  ComicThemeData({required this.colorScheme});

  final ColorScheme colorScheme;

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
