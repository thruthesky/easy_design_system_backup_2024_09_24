import 'package:flutter/material.dart';
import 'package:markdown_widget/widget/markdown_block.dart';

class TextContent extends StatelessWidget {
  const TextContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const MarkdownBlock(data: '''
                  # TextContent
                  ...
                  ## Terms
                  - `Basic widgets` means the widgets in material.dart.
                  - `Visual component widget` is a widget that have a visual outloook on screen like a Text widget. While GestureDetector is not a visual component since it does not appear on the screen.
                  ''');
  }
}
