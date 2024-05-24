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
        child: Wrap(
          runSpacing: 8,
          children: [
            const Text("Comic Theme"),
            Theme(
              data: ComicThemeData.of(context),
              child: Row(
                children: [
                  FloatingActionButton(
                    heroTag: 'fab',
                    onPressed: () {
                      debugPrint('Pressed');
                    },
                    child: const Icon(Icons.favorite),
                  ),
                  const SizedBox(width: 8),
                  FloatingActionButton.extended(
                    heroTag: 'ss',
                    onPressed: () {
                      debugPrint('Pressed');
                    },
                    label: const Text('Extended'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 80),
            const Text("Sleek Theme"),
            SleekTheme(
              child: Row(
                children: [
                  FloatingActionButton(
                    heroTag: 'ssss',
                    onPressed: () {
                      debugPrint('Pressed');
                    },
                    child: const Icon(Icons.favorite),
                  ),
                  const SizedBox(width: 8),
                  FloatingActionButton.extended(
                    heroTag: 'sssss',
                    onPressed: () {
                      debugPrint('Pressed');
                    },
                    label: const Text('Extended'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
