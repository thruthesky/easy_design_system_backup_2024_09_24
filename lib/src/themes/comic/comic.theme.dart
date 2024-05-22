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
  ComicTextButtonThemeData();

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
      appBarTheme: AppBarTheme(
        iconTheme: theme.iconTheme.copyWith(
          color: theme.colorScheme.onSurface,
        ),
        actionsIconTheme: theme.iconTheme.copyWith(
          color: theme.colorScheme.onSurface,
        ),
        titleTextStyle: theme.textTheme.headlineMedium?.copyWith(
          color: theme.colorScheme.onSurface,
        ),
      ),

      // actionIconTheme: ActionIconThemeData(
      //   backButtonIconBuilder: (context) =>
      //       IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
      // ),

      colorScheme: Theme.of(context).colorScheme,

      // textButtonTheme: TextButtonThemeData(
      //   style: ButtonStyle(
      //     foregroundColor:
      //         WidgetStateProperty.all(theme.colorScheme.onSurface),
      //     backgroundColor:
      //         WidgetStateProperty.all(theme.colorScheme.surface),
      //     shape: WidgetStateProperty.all(
      //       RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(24),
      //         side: BorderSide(
      //           width: borderThickness,
      //           color: theme.colorScheme.secondary,
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
      // textButtonTheme: TextButtonThemeData(
      //   style: ButtonStyle(
      //     foregroundColor: WidgetStateProperty.all(theme.colorScheme.primary),
      //     backgroundColor:
      //         WidgetStateProperty.all(theme.colorScheme.surface),
      //     textStyle: MaterialStatePropertyAll(
      //       theme.textTheme.labelLarge?.copyWith(
      //         fontWeight: FontWeight.w700,
      //       ),
      //     ),
      //   ),
      // ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          elevation: WidgetStateProperty.all(0),
          foregroundColor: WidgetStateProperty.all(theme.colorScheme.onSurface),
          backgroundColor: WidgetStateProperty.all(theme.colorScheme.surface),
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

      outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
          elevation: WidgetStateProperty.all(0),
          foregroundColor: WidgetStateProperty.all(theme.colorScheme.onSurface),
          backgroundColor: WidgetStateProperty.all(theme.colorScheme.surface),
          side: WidgetStateProperty.all(
            BorderSide(
              color: theme.colorScheme.outline,
              width: borderThickness,
            ),
          ),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
              side: BorderSide(
                color: theme.colorScheme.outline,
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
          side: BorderSide(
            color: theme.colorScheme.outline,
            width: borderThickness,
          ),
        ),
      ),
      dividerTheme: theme.dividerTheme.copyWith(
        color: theme.colorScheme.secondary,
        thickness: borderThickness,
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
        backgroundColor: theme.navigationBarTheme.backgroundColor,
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
        indicatorColor: Theme.of(context).colorScheme.surface,
        indicatorShape: RoundedRectangleBorder(
          side: BorderSide(
            width: borderThickness,
            color: Theme.of(context).colorScheme.onSurface,
          ),
          borderRadius: BorderRadius.circular(24),
        ),
        labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
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
      // iconButtonTheme: ComicIconButtonThemeData(
      //   style: ButtonStyle(
      //     elevation: WidgetStateProperty.all(0),
      //     foregroundColor:
      //         WidgetStateProperty.all(theme.colorScheme.onSurface),
      //     backgroundColor:
      //         WidgetStateProperty.all(theme.colorScheme.surface),
      //     shape: WidgetStateProperty.all(
      //       RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(24),
      //         side: const BorderSide(
      //           width: borderThickness,
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
      segmentedButtonTheme: SegmentedButtonThemeData(
        style: SegmentedButton.styleFrom(
          selectedBackgroundColor: theme.colorScheme.secondary.withAlpha(80),
          selectedForegroundColor: theme.colorScheme.onSurface,
          foregroundColor: theme.colorScheme.onSurface,
          side: const BorderSide(
            width: borderThickness,
          ),
          elevation: 0,
        ),
        // style: ButtonStyle(
        //   side: WidgetStateProperty.all(
        //     BorderSide(
        //       width: borderThickness,
        //       color: theme.colorScheme.secondary,
        //     ),
        //   ),
        //   elevation: WidgetStateProperty.all(0),
        //   foregroundColor:
        //       WidgetStateProperty.all(theme.colorScheme.onSurface),
        //   shape: WidgetStateProperty.all(
        //     RoundedRectangleBorder(
        //       borderRadius: BorderRadius.circular(24),
        //     ),
        //   ),
        // ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: theme.colorScheme.surface,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
          side: const BorderSide(
            width: borderThickness,
          ),
        ),
        highlightElevation: 0,
      ),
      badgeTheme: BadgeThemeData(
        backgroundColor: theme.colorScheme.secondary,
        textColor: theme.colorScheme.onSecondary,
      ),
      progressIndicatorTheme: ProgressIndicatorThemeData(
        linearTrackColor: theme.colorScheme.outlineVariant.withAlpha(40),
        color: theme.colorScheme.secondary,
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: theme.colorScheme.surface,
        shape: const Border(
          top: BorderSide(
            width: borderThickness,
          ),
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
