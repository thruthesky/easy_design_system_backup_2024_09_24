import 'package:flutter/material.dart';
import 'package:social_design_system/social_design_system.dart';

class FloatingActionButtons extends StatelessWidget {
  const FloatingActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('FloatingActionButton'),
        const SizedBox(height: 16),
        Wrap(
          spacing: 24,
          children: [
            Theme(
              data: ComicThemeData.of(context),
              child: Column(
                children: [
                  FloatingActionButton(
                    onPressed: () {},
                    child: const Icon(Icons.add),
                  ),
                  const Text('Comic'),
                ],
              ),
            ),
            Theme(
              data: SleekThemeData.of(context),
              child: Column(
                children: [
                  FloatingActionButton(
                    onPressed: () {},
                    child: const Icon(Icons.add),
                  ),
                  const Text('Sleek'),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
