import 'package:flutter/material.dart';

enum _IconButtonVariant { standard, filled, filledTonal, outlined }

class SleekIconButton extends StatelessWidget {
  /// Creates an icon button.
  ///
  /// Icon buttons are commonly used in the [AppBar.actions] field, but they can
  /// be used in many other places as well.
  ///
  /// Requires one of its ancestors to be a [Material] widget. This requirement
  /// no longer exists if [ThemeData.useMaterial3] is set to true.
  ///
  /// The [icon] argument must be specified, and is typically either an [Icon]
  /// or an [ImageIcon].
  const SleekIconButton({
    super.key,
    required this.onPressed,
    this.mouseCursor,
    this.focusNode,
    this.autofocus = false,
    this.tooltip,
    this.enableFeedback,
    this.isSelected,
    this.selectedIcon,
    required this.icon,
  }) : _variant = _IconButtonVariant.standard;

  /// Create a filled variant of IconButton.
  ///
  /// Filled icon buttons have higher visual impact and should be used for
  /// high emphasis actions, such as turning off a microphone or camera.
  const SleekIconButton.filled({
    super.key,
    required this.onPressed,
    this.mouseCursor,
    this.focusNode,
    this.autofocus = false,
    this.tooltip,
    this.enableFeedback,
    this.isSelected,
    this.selectedIcon,
    required this.icon,
  }) : _variant = _IconButtonVariant.filled;

  /// Create a filled tonal variant of IconButton.
  ///
  /// Filled tonal icon buttons are a middle ground between filled and outlined
  /// icon buttons. They’re useful in contexts where the button requires slightly
  /// more emphasis than an outline would give, such as a secondary action paired
  /// with a high emphasis action.
  const SleekIconButton.filledTonal({
    super.key,
    required this.onPressed,
    this.mouseCursor,
    this.focusNode,
    this.autofocus = false,
    this.tooltip,
    this.enableFeedback,
    this.isSelected,
    this.selectedIcon,
    required this.icon,
  }) : _variant = _IconButtonVariant.filledTonal;

  /// Create a filled tonal variant of IconButton.
  ///
  /// Outlined icon buttons are medium-emphasis buttons. They’re useful when an
  /// icon button needs more emphasis than a standard icon button but less than
  /// a filled or filled tonal icon button.
  const SleekIconButton.outlined({
    super.key,
    required this.onPressed,
    this.mouseCursor,
    this.focusNode,
    this.autofocus = false,
    this.tooltip,
    this.enableFeedback,
    this.isSelected,
    this.selectedIcon,
    required this.icon,
  }) : _variant = _IconButtonVariant.outlined;

  /// The icon to display inside the button.
  ///
  /// The [Icon.size] and [Icon.color] of the icon is configured automatically
  /// based on the [iconSize] and [color] properties of _this_ widget using an
  /// [IconTheme] and therefore should not be explicitly given in the icon
  /// widget.
  ///
  /// See [Icon], [ImageIcon].
  final Widget icon;

  /// The callback that is called when the button is tapped or otherwise activated.
  ///
  /// If this is set to null, the button will be disabled.
  final VoidCallback? onPressed;

  /// {@macro flutter.material.RawMaterialButton.mouseCursor}
  ///
  /// If set to null, will default to
  /// - [SystemMouseCursors.basic], if [onPressed] is null
  /// - [SystemMouseCursors.click], otherwise
  final MouseCursor? mouseCursor;

  /// {@macro flutter.widgets.Focus.focusNode}
  final FocusNode? focusNode;

  /// {@macro flutter.widgets.Focus.autofocus}
  final bool autofocus;

  /// Text that describes the action that will occur when the button is pressed.
  ///
  /// This text is displayed when the user long-presses on the button and is
  /// used for accessibility.
  final String? tooltip;

  /// Whether detected gestures should provide acoustic and/or haptic feedback.
  ///
  /// For example, on Android a tap will produce a clicking sound and a
  /// long-press will produce a short vibration, when feedback is enabled.
  ///
  /// See also:
  ///
  ///  * [Feedback] for providing platform-specific feedback to certain actions.
  final bool? enableFeedback;

  /// The optional selection state of the icon button.
  ///
  /// If this property is null, the button will behave as a normal push button,
  /// otherwise, the button will toggle between showing [icon] and [selectedIcon]
  /// based on the value of [isSelected]. If true, it will show [selectedIcon],
  /// if false it will show [icon].
  ///
  /// This property is only used if [ThemeData.useMaterial3] is true.
  final bool? isSelected;

  /// The icon to display inside the button when [isSelected] is true. This property
  /// can be null. The original [icon] will be used for both selected and unselected
  /// status if it is null.
  ///
  /// The [Icon.size] and [Icon.color] of the icon is configured automatically
  /// based on the [iconSize] and [color] properties using an [IconTheme] and
  /// therefore should not be explicitly configured in the icon widget.
  ///
  /// This property is only used if [ThemeData.useMaterial3] is true.
  ///
  /// See also:
  ///
  /// * [Icon], for icons based on glyphs from fonts instead of images.
  /// * [ImageIcon], for showing icons from [AssetImage]s or other [ImageProvider]s.
  final Widget? selectedIcon;

  final _IconButtonVariant _variant;

  /// A static convenience method that constructs an icon button
  /// [ButtonStyle] given simple values. This method is only used for Material 3.
  ///
  /// The [foregroundColor] color is used to create a [MaterialStateProperty]
  /// [ButtonStyle.foregroundColor] value. Specify a value for [foregroundColor]
  /// to specify the color of the button's icons. The [hoverColor], [focusColor]
  /// and [highlightColor] colors are used to indicate the hover, focus,
  /// and pressed states. Use [backgroundColor] for the button's background
  /// fill color. Use [disabledForegroundColor] and [disabledBackgroundColor]
  /// to specify the button's disabled icon and fill color.
  ///
  /// Similarly, the [enabledMouseCursor] and [disabledMouseCursor]
  /// parameters are used to construct [ButtonStyle].mouseCursor.
  ///
  /// All of the other parameters are either used directly or used to
  /// create a [MaterialStateProperty] with a single value for all
  /// states.
  ///
  /// All parameters default to null, by default this method returns
  /// a [ButtonStyle] that doesn't override anything.
  ///
  /// For example, to override the default icon color for a
  /// [IconButton], as well as its overlay color, with all of the
  /// standard opacity adjustments for the pressed, focused, and
  /// hovered states, one could write:
  ///
  /// ```dart
  /// IconButton(
  ///   icon: const Icon(Icons.pets),
  ///   style: IconButton.styleFrom(foregroundColor: Colors.green),
  ///   onPressed: () {
  ///     // ...
  ///   },
  /// ),
  /// ```
  @override
  Widget build(BuildContext context) {
    if (_variant == _IconButtonVariant.filled) {
      return IconButton.filled(
        onPressed: onPressed,
        mouseCursor: mouseCursor,
        focusNode: focusNode,
        autofocus: autofocus,
        tooltip: tooltip,
        enableFeedback: enableFeedback,
        isSelected: isSelected,
        selectedIcon: selectedIcon,
        icon: icon,
        // color: Theme.of(context).colorScheme.secondary.withAlpha(60),
        color: Theme.of(context).colorScheme.onSecondary,

        // color: Colors.red,
        // highlightColor: Theme.of(context).colorScheme.onSecondary,
      );
    }
    if (_variant == _IconButtonVariant.filledTonal) {
      return IconButton.filledTonal(
        onPressed: onPressed,
        mouseCursor: mouseCursor,
        focusNode: focusNode,
        autofocus: autofocus,
        tooltip: tooltip,
        enableFeedback: enableFeedback,
        isSelected: isSelected,
        selectedIcon: selectedIcon,
        icon: icon,
      );
    }
    if (_variant == _IconButtonVariant.outlined) {
      return IconButton.outlined(
        onPressed: onPressed,
        mouseCursor: mouseCursor,
        focusNode: focusNode,
        autofocus: autofocus,
        tooltip: tooltip,
        enableFeedback: enableFeedback,
        isSelected: isSelected,
        selectedIcon: selectedIcon,
        icon: icon,
      );
    }
    return IconButton(
      onPressed: onPressed,
      mouseCursor: mouseCursor,
      focusNode: focusNode,
      autofocus: autofocus,
      tooltip: tooltip,
      enableFeedback: enableFeedback,
      isSelected: isSelected,
      selectedIcon: selectedIcon,
      icon: icon,
    );
  }
}
