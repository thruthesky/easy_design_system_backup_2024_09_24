import 'package:example/widgets/nothing_to_learn.dart';
import 'package:flutter/material.dart';
import 'package:social_design_system/social_design_system.dart';

class FloatingActionButtonScreen extends StatefulWidget {
  const FloatingActionButtonScreen({super.key});

  @override
  State<FloatingActionButtonScreen> createState() =>
      _FloatingActionButtonScreenState();
}

class _FloatingActionButtonScreenState
    extends State<FloatingActionButtonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Floating Action Buttons'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Comic Theme"),
            const SizedBox(height: 8),
            Theme(
              data: ComicThemeData.of(context),
              child: Row(
                children: [
                  FloatingActionButton(
                    heroTag: 'comicFloatingActionButton',
                    onPressed: () {
                      debugPrint('Pressed');
                    },
                    child: const Icon(Icons.favorite),
                  ),
                  const SizedBox(width: 8),
                  FloatingActionButton.extended(
                    heroTag: 'comicFloatingActionButtonExtended',
                    onPressed: () {
                      debugPrint('Pressed');
                    },
                    label: const Text('Extended'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            const Text("Sleek Theme"),
            const SizedBox(height: 8),
            SleekTheme(
              child: Row(
                children: [
                  FloatingActionButton(
                    heroTag: 'sleekFloatingActionButton',
                    onPressed: () {
                      debugPrint('Pressed');
                    },
                    child: const Icon(Icons.favorite),
                  ),
                  const SizedBox(width: 8),
                  FloatingActionButton.extended(
                    heroTag: 'sleekFloatingActionButtonExtended',
                    onPressed: () {
                      debugPrint('Pressed');
                    },
                    label: const Text('Extended'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            const NothingToLearn(),
          ],
        ),
      ),
    );
  }
}
