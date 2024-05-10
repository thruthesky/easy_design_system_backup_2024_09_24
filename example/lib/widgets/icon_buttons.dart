import 'package:flutter/material.dart';
import 'package:social_design_system/social_design_system.dart';

class IconButtons extends StatelessWidget {
  const IconButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 24,
      children: [
        Theme(
          data: ComicThemeData.of(context),
          child: Column(
            children: [
              const Text('Comic'),
              const SizedBox(height: 18),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.grade_outlined),
              ),
              const Text('IconButton'),
              const SizedBox(height: 18),
              IconButton.filled(
                onPressed: () {},
                icon: const Icon(Icons.grade_outlined),
              ),
              const Text('IconButton.filled'),
              const SizedBox(height: 18),
              IconButton.filledTonal(
                onPressed: () {},
                icon: const Icon(Icons.grade_outlined),
              ),
              const Text('IconButton.filledTonal'),
              const SizedBox(height: 18),
              IconButton.outlined(
                onPressed: () {},
                icon: const Icon(Icons.grade_outlined),
              ),
              const Text('IconButton.outlined'),
            ],
          ),
        ),
        Theme(
          data: SleekThemeData.of(context),
          child: Column(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.grade_outlined),
              ),
              const Text('Sleek IconButton'),
            ],
          ),
        ),
      ],
    );
  }
}
