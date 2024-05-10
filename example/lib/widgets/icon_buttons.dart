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
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.grade_outlined),
              ),
              const Text('Comic IconButton'),
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
