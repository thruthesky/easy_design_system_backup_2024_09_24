import 'package:flutter/material.dart';

const borderThickness = 2.0;

class ComicIconButtonThemeData {
  ComicIconButtonThemeData();

  static ThemeData of(BuildContext context) {
    final theme = Theme.of(context);
    return ThemeData(
      iconButtonTheme: IconButtonThemeData(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
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
          color: theme.colorScheme.onBackground,
        ),
        actionsIconTheme: theme.iconTheme.copyWith(
          color: theme.colorScheme.onBackground,
        ),
        titleTextStyle: theme.textTheme.headlineMedium?.copyWith(
          color: theme.colorScheme.onBackground,
        ),
      ),

      // actionIconTheme: ActionIconThemeData(
      //   backButtonIconBuilder: (context) =>
      //       IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
      // ),

      badgeTheme: BadgeThemeData(
        backgroundColor: theme.colorScheme.secondary,
        textColor: theme.colorScheme.onSecondary,
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: theme.colorScheme.background,
        shape: const Border(
          top: BorderSide(
            width: borderThickness,
          ),
        ),
      ),
      colorScheme: Theme.of(context).colorScheme,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(0),
          shape: MaterialStateProperty.all(
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
        backgroundColor: theme.colorScheme.background,
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
          borderRadius: BorderRadius.circular(24),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
          borderSide: BorderSide(
            color: theme.colorScheme.secondary,
            width: borderThickness,
          ),
        ),
      ),
      // iconButtonTheme: ComicIconButtonThemeData(
      //   style: ButtonStyle(
      //     elevation: MaterialStateProperty.all(0),
      //     foregroundColor:
      //         MaterialStateProperty.all(theme.colorScheme.onSurface),
      //     backgroundColor:
      //         MaterialStateProperty.all(theme.colorScheme.background),
      //     shape: MaterialStateProperty.all(
      //       RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(24),
      //         side: const BorderSide(
      //           width: borderThickness,
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(0),
          // NOTE: Shape is not working here.
          side: MaterialStatePropertyAll(
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
      dividerTheme: theme.dividerTheme.copyWith(
        color: theme.colorScheme.secondary,
        thickness: borderThickness,
      ),
      tabBarTheme: theme.tabBarTheme.copyWith(
        indicator: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: borderThickness * 3,
              color: theme.colorScheme.onBackground,
            ),
          ),
        ),
        dividerColor: theme.colorScheme.onBackground,
        dividerHeight: borderThickness * 0.8,
        labelColor: theme.colorScheme.onBackground,
        unselectedLabelColor: theme.colorScheme.onBackground,
        overlayColor: MaterialStateProperty.all(
          theme.colorScheme.secondary.withAlpha(40),
        ),
      ),
      navigationBarTheme: theme.navigationBarTheme.copyWith(
        surfaceTintColor: Colors.transparent,
        backgroundColor: theme.navigationBarTheme.backgroundColor,
        labelTextStyle: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w800,
              color: Theme.of(context).colorScheme.onBackground,
            );
          }
          return TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w300,
            color: Theme.of(context).colorScheme.onBackground,
          );
        }),
        indicatorColor: Theme.of(context).colorScheme.background,
        indicatorShape: RoundedRectangleBorder(
          side: BorderSide(
            width: borderThickness,
            color: Theme.of(context).colorScheme.onBackground,
          ),
          borderRadius: BorderRadius.circular(24),
        ),
        labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
      ),
      progressIndicatorTheme: ProgressIndicatorThemeData(
        linearTrackColor: theme.colorScheme.outlineVariant.withAlpha(40),
        color: theme.colorScheme.secondary,
      ),
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
        //   side: MaterialStateProperty.all(
        //     BorderSide(
        //       width: borderThickness,
        //       color: theme.colorScheme.secondary,
        //     ),
        //   ),
        //   elevation: MaterialStateProperty.all(0),
        //   foregroundColor:
        //       MaterialStateProperty.all(theme.colorScheme.onSurface),
        //   shape: MaterialStateProperty.all(
        //     RoundedRectangleBorder(
        //       borderRadius: BorderRadius.circular(24),
        //     ),
        //   ),
        // ),
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
