import 'package:example/widgets/nothing_to_learn.dart';
import 'package:flutter/material.dart';
import 'package:social_design_system/social_design_system.dart';

class DividerScreen extends StatelessWidget {
  const DividerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Divider'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const Text('Comic'),
            Theme(
              data: ComicTheme.of(context),
              child: const Divider(),
            ),
            const SizedBox(height: 32),
            const Text('Sleek'),
            Theme(
              data: SleekTheme.of(context),
              child: const Divider(),
            ),
            const SizedBox(
              height: 46,
            ),
            const NothingToLearn()
          ],
        ),
      ),
    );
  }
}
