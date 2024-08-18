import 'package:flutter/material.dart';
import 'package:markdown_widget/widget/markdown_block.dart';
import 'package:easy_design_system/easy_design_system.dart';

class ComicBorderThemeDataScreen extends StatefulWidget {
  static const String routeName = '/ComicBorderThemeData';
  const ComicBorderThemeDataScreen({super.key});

  @override
  State<ComicBorderThemeDataScreen> createState() =>
      _ComicBorderThemeDataScreenState();
}

class _ComicBorderThemeDataScreenState
    extends State<ComicBorderThemeDataScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ComicBorderThemeData'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const MarkdownBlock(data: '''
# ComicTheme Border

- Why?
  - The comic theme is known to have a thick outline border, but it doesn't apply the border to every widget.
  - Specifically, the Container widget doesn't have this border because the theme system doesn't support it.
  - To address this, we created an extension method called `comicBorder` to apply the comic theme border to the Container widget.

- How?
  - Since the `comicBorder` method changes the decoration of the Container widget, you cannot use the `color` property of the Container together with the `comicBorder` method.

- Example:
```dart
Container(
  padding: const EdgeInsets.all(8.0),
  decoration: BoxDecoration(
    color: Colors.grey.shade300,
  ),
  child: const Text('Hello, Easy Design System!'),
).comicBorder(),

/// Display a Container with a border containing background image and text.
Container(
  margin: const EdgeInsets.all(48.0),
  padding: const EdgeInsets.fromLTRB(32, 16, 32, 16),
  decoration: const BoxDecoration(
    image: DecorationImage(
      image: NetworkImage('https://picsum.photos/200/300'),
      fit: BoxFit.cover,
    ),
  ),
  child: const Text('Easy Design System with decoration!'),
).comicBorder(
  outlineColor: Colors.blue,
  inlineColor: Colors.amber,
  borderRadius: 32,
),


/// Display a Container with a border, but without inner border.
Container(
  margin: const EdgeInsets.all(8.0),
  padding: const EdgeInsets.all(32),
  decoration: const BoxDecoration(
    image: DecorationImage(
      image: NetworkImage('https://picsum.photos/401/200'),
      fit: BoxFit.cover,
    ),
  ),
  child: const Text('Without inner border!'),
).comicBorder(
  outlineColor: Colors.black,
  spacing: 0,
),

```
      '''),

            ///
            Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
              ),
              child: const Text('Hello, Easy Design System!'),
            ).comicBorder(),

            /// Display a Container with a border containing background image and text.
            Container(
              margin: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.fromLTRB(32, 16, 32, 16),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://picsum.photos/200/300'),
                  fit: BoxFit.cover,
                ),
              ),
              child: const Text('Easy Design System with decoration!'),
            ).comicBorder(
              outlineColor: Colors.blue,
              inlineColor: Colors.amber,
              borderRadius: 32,
            ),

            Container(
              margin: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.all(32),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://picsum.photos/401/200'),
                  fit: BoxFit.cover,
                ),
              ),
              child: const Text('Without inner border!'),
            ).comicBorder(
              outlineColor: Colors.black,
              spacing: 0,
            ),

            const SafeArea(child: SizedBox(height: 120)),
          ],
        ),
      ),
    );
  }
}
