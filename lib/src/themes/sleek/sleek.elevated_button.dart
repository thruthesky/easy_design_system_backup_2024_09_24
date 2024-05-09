import 'package:flutter/material.dart';

/// SleekElevatedButton
///
/// Sleek-styled elevated button.
///
/// [SleekElevatedButton] is an elevated button that is opinionated on the style.
/// The style will be based on the theme.
class SleekElevatedButton extends StatelessWidget {
  /// Create a SleekElevatedButton.
  const SleekElevatedButton({
    super.key,
    required this.onPressed,
    this.onLongPress,
    this.onHover,
    this.onFocusChange,
    // Should not style here
    // super.style,
    this.focusNode,
    this.autofocus = false,
    this.clipBehavior = Clip.none,
    this.statesController,
    required this.child,
  });

  final void Function()? onPressed;
  final void Function()? onLongPress;
  final void Function(bool)? onHover;
  final void Function(bool)? onFocusChange;
  final FocusNode? focusNode;
  final bool autofocus;
  final Clip clipBehavior;
  final MaterialStatesController? statesController;
  final Widget? child;

  /// Create a sleek elevated button from a pair of widgets that serve as the button's
  /// [icon] and [label].
  ///
  /// The icon and label are arranged in a row and padded by 12 logical pixels
  /// at the start, and 16 at the end, with an 8 pixel gap in between.
  const factory SleekElevatedButton.icon({
    Key? key,
    required void Function()? onPressed,
    void Function()? onLongPress,
    void Function(bool)? onHover,
    void Function(bool)? onFocusChange,
    FocusNode? focusNode,
    bool autofocus,
    Clip clipBehavior,
    MaterialStatesController? statesController,
    required Widget icon,
    required Widget label,
  }) = _SleekElevatedButtonIcon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      onLongPress: onLongPress,
      onHover: onHover,
      onFocusChange: onFocusChange,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        shadowColor: Colors.transparent,
        backgroundColor: Theme.of(context).colorScheme.secondary.withAlpha(60),
        foregroundColor: Theme.of(context).colorScheme.onSecondary,
      ),
      focusNode: focusNode,
      autofocus: autofocus,
      clipBehavior: clipBehavior,
      statesController: statesController,
      child: child,
    );
  }
}

class _SleekElevatedButtonIcon extends SleekElevatedButton {
  const _SleekElevatedButtonIcon({
    super.key,
    super.onPressed,
    super.onLongPress,
    super.onHover,
    super.onFocusChange,
    super.focusNode,
    super.autofocus,
    super.clipBehavior,
    super.statesController,
    required this.icon,
    required this.label,
  }) : super(child: null);

  final Widget icon;
  final Widget label;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      key: key,
      onPressed: onPressed,
      onLongPress: onLongPress,
      onHover: onHover,
      onFocusChange: onFocusChange,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        shadowColor: Colors.transparent,
        backgroundColor: Theme.of(context).colorScheme.secondary.withAlpha(60),
        foregroundColor: Theme.of(context).colorScheme.onSecondary,
      ),
      focusNode: focusNode,
      autofocus: autofocus,
      clipBehavior: clipBehavior,
      statesController: statesController,
      icon: icon,
      label: label,
    );
  }
}
