import 'package:flutter/material.dart';

const borderThickness = 2.0;

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
      colorScheme: Theme.of(context).colorScheme,
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          foregroundColor:
              MaterialStateProperty.all(theme.colorScheme.onSurface),
          backgroundColor:
              MaterialStateProperty.all(theme.colorScheme.background),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
              side: BorderSide(
                width: borderThickness,
                color: theme.colorScheme.secondary,
              ),
            ),
          ),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(0),
          foregroundColor:
              MaterialStateProperty.all(theme.colorScheme.onSurface),
          backgroundColor:
              MaterialStateProperty.all(theme.colorScheme.background),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
              side: BorderSide(
                width: borderThickness,
                color: theme.colorScheme.secondary,
              ),
            ),
          ),
        ),
      ),
      listTileTheme: theme.listTileTheme.copyWith(
        tileColor: theme.colorScheme.surface,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
          side: BorderSide(color: theme.colorScheme.secondary, width: 2),
        ),
      ),
      iconButtonTheme: IconButtonThemeData(
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(0),
          foregroundColor:
              MaterialStateProperty.all(theme.colorScheme.onSurface),
          backgroundColor:
              MaterialStateProperty.all(theme.colorScheme.background),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
              side: BorderSide(
                width: borderThickness,
                color: theme.colorScheme.secondary,
              ),
            ),
          ),
        ),
      ),
      segmentedButtonTheme: SegmentedButtonThemeData(
        style: ButtonStyle(
          side: MaterialStateProperty.all(
            BorderSide(
              width: borderThickness,
              color: theme.colorScheme.secondary,
            ),
          ),
          elevation: MaterialStateProperty.all(0),
          foregroundColor:
              MaterialStateProperty.all(theme.colorScheme.onSurface),
          backgroundColor:
              MaterialStateProperty.all(theme.colorScheme.background),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
          ),
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: theme.colorScheme.background,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
          side: const BorderSide(
            width: borderThickness,
          ),
        ),
      ),
      badgeTheme: BadgeThemeData(
        backgroundColor: theme.colorScheme.inverseSurface,
        textColor: theme.colorScheme.onInverseSurface,
        padding: const EdgeInsets.only(left: 5, right: 5),
      ),
      progressIndicatorTheme: ProgressIndicatorThemeData(
        linearTrackColor: theme.colorScheme.outlineVariant.withAlpha(40),
        color: theme.colorScheme.secondary,
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: theme.colorScheme.background,
        surfaceTintColor: theme.colorScheme.primary,
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
