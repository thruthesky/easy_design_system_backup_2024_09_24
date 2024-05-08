import 'package:flutter/material.dart';

class ComicTheme extends Theme {
  ComicTheme({super.key, required BuildContext context, required super.child})
      : super(
          data: ThemeData(
            useMaterial3: true,
            listTileTheme: ListTileThemeData(
              // tileColor: const Color(0xFFE0E0E0),
              contentPadding: const EdgeInsets.symmetric(horizontal: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
                side: BorderSide(
                  color: Theme.of(context).colorScheme.secondary,
                  width: 2,
                ),
              ),
            ),
          ),
        );
}
