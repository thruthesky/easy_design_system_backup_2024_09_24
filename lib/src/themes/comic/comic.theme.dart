import 'package:flutter/material.dart';

const borderThickness = 2.0;

class ComicIconButtonThemeData {
  ComicIconButtonThemeData();

  static ThemeData of(BuildContext context) {
    final theme = Theme.of(context);
    return ThemeData(
      iconButtonTheme: IconButtonThemeData(
        style: ButtonStyle(
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
              side: BorderSide(
                color: theme.colorScheme.outline,
                width: borderThickness,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ComicTextButtonThemeData {
  // ComicTextButtonThemeData();

  static ThemeData of(BuildContext context) {
    final theme = Theme.of(context);
    return ThemeData(
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          foregroundColor: WidgetStateProperty.all(theme.colorScheme.onSurface),
          backgroundColor: WidgetStateProperty.all(theme.colorScheme.surface),
          shape: WidgetStateProperty.all(
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
    );
  }
}

/// ComicThemeData
///
/// [ComicThemeData] is a class that holds the color scheme for the Comic theme.
class ComicThemeData {
  ComicThemeData();

  /// of
  ///
  /// [of] is a method that returns a [ThemeData] object with the color scheme
  static ThemeData of(BuildContext context) {
    final theme = Theme.of(context);
    return ThemeData(
      // appBarTheme: AppBarTheme(
      //   iconTheme: theme.iconTheme.copyWith(
      //     color: theme.colorScheme.onSurface,
      //   ),
      //   actionsIconTheme: theme.iconTheme.copyWith(
      //     color: theme.colorScheme.onSurface,
      //   ),
      //   titleTextStyle: theme.textTheme.headlineMedium?.copyWith(
      //     color: theme.colorScheme.onSurface,
      //   ),
      // ),

      // actionIconTheme: ActionIconThemeData(
      //   backButtonIconBuilder: (context) =>
      //       IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
      // ),
      badgeTheme: const BadgeThemeData(),
      bottomSheetTheme: BottomSheetThemeData(
        // backgroundColor: theme.colorScheme.surface,
        shape: Border(
          top: BorderSide(
            width: borderThickness,
            color: theme.colorScheme.outline,
          ),
        ),
      ),
      colorScheme: theme.colorScheme,
      checkboxTheme: CheckboxThemeData(
        side: BorderSide(
          width: borderThickness,
          color: theme.colorScheme.outline,
        ),
      ),
      dividerTheme: theme.dividerTheme.copyWith(
        // TODO check the default color
        color: theme.colorScheme.outline,
        thickness: borderThickness,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          elevation: WidgetStateProperty.all(0),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
              side: BorderSide(
                color: theme.colorScheme.outline,
                width: borderThickness,
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        // backgroundColor: theme.colorScheme.surface,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
          side: const BorderSide(
            width: borderThickness,
          ),
        ),
        highlightElevation: 0,
      ),
      inputDecorationTheme: theme.inputDecorationTheme.copyWith(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.15),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.15),
          borderSide: BorderSide(
            color: theme.colorScheme.outline,
            width: borderThickness,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.15),
          borderSide: BorderSide(
            color: theme.colorScheme.outline,
            width: borderThickness,
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
          elevation: WidgetStateProperty.all(0),
          // NOTE: Shape is not working here.
          side: WidgetStatePropertyAll(
            BorderSide(
              color: theme.colorScheme.outline,
              width: borderThickness,
            ),
          ),
        ),
      ),
      listTileTheme: theme.listTileTheme.copyWith(
        tileColor: theme.colorScheme.surface,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
          side: BorderSide(
            color: theme.colorScheme.outline,
            width: borderThickness,
          ),
        ),
      ),
      tabBarTheme: theme.tabBarTheme.copyWith(
        indicator: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: borderThickness * 3,
              color: theme.colorScheme.onSurface,
            ),
          ),
        ),
        dividerColor: theme.colorScheme.onSurface,
        dividerHeight: borderThickness * 0.8,
        labelColor: theme.colorScheme.onSurface,
        unselectedLabelColor: theme.colorScheme.onSurface,
        overlayColor: WidgetStateProperty.all(
          theme.colorScheme.secondary.withAlpha(40),
        ),
      ),
      navigationBarTheme: theme.navigationBarTheme.copyWith(
        surfaceTintColor: Colors.transparent,
        // backgroundColor: theme.navigationBarTheme.backgroundColor,
        labelTextStyle: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w800,
              color: Theme.of(context).colorScheme.onSurface,
            );
          }
          return TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w300,
            color: Theme.of(context).colorScheme.onSurface,
          );
        }),
        // indicatorColor: Theme.of(context).colorScheme.background,
        indicatorShape: RoundedRectangleBorder(
          side: BorderSide(
            width: borderThickness,
            color: Theme.of(context).colorScheme.outline,
          ),
          borderRadius: BorderRadius.circular(24),
        ),
        labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
      ),
      progressIndicatorTheme: const ProgressIndicatorThemeData(
          // linearTrackColor: theme.colorScheme.outlineVariant.withAlpha(40),
          // color: theme.colorScheme.secondary,
          ),
      snackBarTheme: SnackBarThemeData(
        elevation: 0,
        // TODO Fix it on the color scheme outside here
        // backgroundColor: theme.colorScheme.surface,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
          side: BorderSide(
            width: borderThickness,
            color: theme.colorScheme.outline,
          ),
        ),
        actionTextColor: theme.colorScheme.primary,
        // contentTextStyle: TextStyle(
        // TODO Fix it on the color scheme outside here
        // color: theme.colorScheme.onSurface,
        // ),
      ),
      segmentedButtonTheme: SegmentedButtonThemeData(
        style: SegmentedButton.styleFrom(
          // selectedBackgroundColor: theme.colorScheme.secondary.withAlpha(80),
          // selectedForegroundColor: theme.colorScheme.onSurface,
          // foregroundColor: theme.colorScheme.onSurface,
          side: const BorderSide(
            width: borderThickness,
          ),
          elevation: 0,
        ),
      ),
      dialogTheme: DialogTheme(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
          side: BorderSide(
            color: theme.colorScheme.outline,
            width: borderThickness,
          ),
        ),
      ),
      cardTheme: CardTheme(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: const BorderSide(
            width: borderThickness,
          ),
        ),
        elevation: 0,
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

  /// Supporting method to get the [ThemeData] object
  ///
  /// @example
  /// ```dart
  /// final theme = ComicTheme.of(context);
  ///
  /// Theme(
  ///   data: theme,
  /// )
  /// ```
  static ThemeData of(BuildContext context) {
    return ComicThemeData.of(context);
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ComicThemeData.of(context),
      child: child,
    );
  }
}
