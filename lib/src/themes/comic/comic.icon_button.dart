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
            elevation: MaterialStateProperty.all(0),
            foregroundColor:
                MaterialStateProperty.all(theme.colorScheme.onSurface),
            backgroundColor:
                MaterialStateProperty.all(theme.colorScheme.background),
            shape: MaterialStateProperty.all(
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
