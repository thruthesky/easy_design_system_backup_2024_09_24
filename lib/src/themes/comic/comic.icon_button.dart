import 'package:flutter/material.dart';

/// ComicIconButton
///
/// [ComicIconButton] is a class that returns a [IconButton] with the Comic theme.
class ComicIconButton extends StatelessWidget {
  const ComicIconButton({
    super.key,
    required this.onPressed,
    required this.icon,
  });

  final VoidCallback onPressed;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Theme(
      data: theme.copyWith(
        iconButtonTheme: IconButtonThemeData(
          style: ButtonStyle(
            elevation: WidgetStateProperty.all(0),
            foregroundColor:
                WidgetStateProperty.all(theme.colorScheme.onSurface),
            backgroundColor: WidgetStateProperty.all(theme.colorScheme.surface),
            shape: WidgetStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
                side: const BorderSide(
                  width: 2,
                ),
              ),
            ),
          ),
        ),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: icon,
      ),
    );
  }
}
