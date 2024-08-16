import 'package:flutter/material.dart';
import 'package:markdown_widget/widget/markdown_block.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const MarkdownBlock(data: '''
                  # Social Design System
                  
                  - Social design system is an Elegant UI/UX library crafted specifically for building social like applications. This is an open source project that you can fork and make PR.
                  - Developers must NOT do anything, must NOT learn anything, must NOT refer any document to use the social design system. It will just work. Just continue the way how you work.
                  
                  ## Terms
                  - `Basic widgets` means the widgets in material.dart.
                  - `Visual component widget` is a widget that have a visual outloook on screen like a Text widget. While GestureDetector is not a visual component since it does not appear on the screen.
                  ''');
  }
}
