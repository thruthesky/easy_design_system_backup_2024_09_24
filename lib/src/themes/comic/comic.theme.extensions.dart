import 'package:flutter/material.dart';

// Create an extension on Container to add a border to it.
extension ComicThemeContainer on Container {
  Container comicBorder({
    double spacing = 2.4,
    double borderRadius = 24.0,
    Color outlineColor = Colors.black,
    Color inlineColor = Colors.white,
  }) {
    double div = 1.1;
    // borderRadius < 10 ? 1.1 : 1.2;
    if (borderRadius < 10) {
      div = 2;
    } else if (borderRadius < 20) {
      div = 1.2;
    }

    return Container(
      margin: margin,
      decoration: BoxDecoration(
        color: inlineColor, // Background color of the container
        border: Border.all(
          color: outlineColor, // Outer border color
          width: 2.4, // Outer border width
        ),
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Container(
        alignment: alignment,
        padding: padding,
        color: color,
        foregroundDecoration: foregroundDecoration,
        constraints: constraints,
        transform: transform,
        transformAlignment: transformAlignment,
        clipBehavior: clipBehavior,
        // Space between outer borders and content
        margin: EdgeInsets.all(spacing),
        decoration:
            ((decoration as BoxDecoration?) ?? const BoxDecoration()).copyWith(
          borderRadius: BorderRadius.circular(borderRadius / div),
        ),
        child: child,
      ),
    );
  }
}
