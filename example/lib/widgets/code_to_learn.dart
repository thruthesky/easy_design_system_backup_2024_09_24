import 'package:flutter/material.dart';
import 'package:markdown_widget/markdown_widget.dart';
import 'package:markdown_widget/widget/all.dart';

class CodeToLearn extends StatelessWidget {
  const CodeToLearn({
    super.key,
    required this.md,
  });

  final String md;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 48),
        MarkdownBlock(data: md),
      ],
    );
  }
}
