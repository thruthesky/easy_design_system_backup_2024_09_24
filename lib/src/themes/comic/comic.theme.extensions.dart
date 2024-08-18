import 'package:flutter/material.dart';

// Create an extension on Container to add a border to it.
extension ComicThemeContainer on Widget {
  Container comicBorder({
    EdgeInsets margin = EdgeInsets.zero,
    EdgeInsets padding = EdgeInsets.zero,
    double spacing = 2.4,
    double borderRadius = 24.0,
    Color outlineColor = Colors.black,
    Color inlineColor = Colors.white,
    double borderWidth = 2.0,
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
          width: borderWidth, // Outer border width
        ),
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Container(
        padding: padding,
        margin: EdgeInsets.all(spacing),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius / div),
        ),
        child: this,
      ),
    );
  }
}
