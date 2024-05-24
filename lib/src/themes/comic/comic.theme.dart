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
      cardTheme: theme.cardTheme.copyWith(
        // color: theme.colorScheme.surface,
        elevation: 0,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: borderThickness,
            color: theme.colorScheme.outline,
          ),
          borderRadius: BorderRadius.circular(24),
        ),
      ),

      /// [Chip] @thruthesky - 2024-05-22
      ///
      chipTheme: ChipThemeData(
        backgroundColor: theme.colorScheme.surface,
        deleteIconColor: theme.colorScheme.onSurface,
        disabledColor: theme.colorScheme.onSurface,
        selectedColor: theme.colorScheme.secondary,
        secondarySelectedColor: theme.colorScheme.secondary,
        labelPadding: const EdgeInsets.symmetric(horizontal: 8),
        padding: const EdgeInsets.symmetric(horizontal: 8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
          side: BorderSide(
            color: theme.colorScheme.outline,
            width: borderThickness,
          ),
        ),
        labelStyle: theme.textTheme.bodyLarge?.copyWith(
          color: theme.colorScheme.onSurface,
        ),
        secondaryLabelStyle: theme.textTheme.bodyLarge?.copyWith(
          color: theme.colorScheme.onSurface,
        ),
        brightness: theme.brightness,
      ),
      colorScheme: theme.colorScheme,
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
          side: BorderSide(
            width: borderThickness,
            color: theme.colorScheme.outline,
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
        // Note: By default, the tileColor uses Colors.transparent so we should
        // not give tile color on comic theme because it might conflict with other
        // widget that uses background color. We should let the developers
        // override the tileColor instead
        // tileColor: theme.colorScheme.surface,
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
              color: theme.colorScheme.outline,
            ),
          ),
        ),
        indicatorSize: TabBarIndicatorSize.label,
        // Note: By default, the dividerColor uses outlineVariant
        // dividerColor: theme.colorScheme.onSurface,
        dividerHeight: borderThickness * 0.8,
        // TODO fix this thru color scheme
        // labelColor: theme.colorScheme.onSurface,
        // unselectedLabelColor: theme.colorScheme.onSurface,
        // TODO fix this thru color scheme
        // overlayColor: WidgetStateProperty.all(
        //   theme.colorScheme.secondary.withAlpha(40),
        // ),
      ),
      navigationBarTheme: theme.navigationBarTheme.copyWith(
        // TODO fix this thru color scheme
        // surfaceTintColor: Colors.transparent,
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
        indicatorShape: RoundedRectangleBorder(
          side: BorderSide(
            width: borderThickness,
            color: Theme.of(context).colorScheme.outline,
          ),
          borderRadius: BorderRadius.circular(24),
        ),
        labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
      ),
      drawerTheme: theme.drawerTheme.copyWith(
        elevation: 0,
        shadowColor: Colors.transparent,
        endShape: RoundedRectangleBorder(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(24),
              bottomLeft: Radius.circular(24),
            ),
            side: BorderSide(
              width: borderThickness,
              color: theme.colorScheme.outline,
            )),
        shape: RoundedRectangleBorder(
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(24),
                bottomRight: Radius.circular(24)),
            side: BorderSide(
              width: borderThickness,
              color: theme.colorScheme.outline,
            )),
      ),
      navigationDrawerTheme: theme.navigationDrawerTheme.copyWith(
        elevation: 0,
        shadowColor: Colors.transparent,
        indicatorColor: Colors.transparent,
        indicatorShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
            side: BorderSide(
              width: borderThickness,
              color: theme.colorScheme.outline,
            )),
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
        // TODO Fix it on the color scheme outside here
        // actionTextColor: theme.colorScheme.primary,
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
          side: BorderSide(
            width: borderThickness,
            color: theme.colorScheme.outline,
          ),
          elevation: 0,
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
