import 'package:flutter/material.dart';
import 'package:social_design_system/social_design_system.dart';

class ButtonsScreen extends StatefulWidget {
  static const String routeName = '/Buttons';
  const ButtonsScreen({super.key});

  @override
  State<ButtonsScreen> createState() => _ButtonsScreenState();
}

class _ButtonsScreenState extends State<ButtonsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            const Text("Elevated Buttons"),
            Wrap(
              spacing: 8,
              children: [
                Theme(
                  data: ComicThemeData.of(context),
                  child: ElevatedButton(
                    onPressed: () {
                      debugPrint('Pressed');
                    },
                    child: const Text('Comic Theme'),
                  ),
                ),
                SleekTheme(
                  child: ElevatedButton(
                    onPressed: () {
                      debugPrint('Pressed');
                    },
                    child: const Text('Sleek Theme'),
                  ),
                ),
              ],
            ),
            const Text("Text Buttons"),
            Wrap(
              spacing: 8,
              children: [
                Theme(
                  data: ComicTextButtonThemeData.of(context),
                  child: TextButton(
                    onPressed: () {
                      debugPrint('Pressed');
                    },
                    child: const Text('Comic Theme'),
                  ),
                ),
                SleekTheme(
                  child: TextButton(
                    onPressed: () {
                      debugPrint('Pressed');
                    },
                    child: const Text('Sleek Theme'),
                  ),
                ),
              ],
            ),
            const Text("Text Buttons with Icon"),
            Wrap(
              spacing: 8,
              children: [
                Theme(
                  data: ComicTextButtonThemeData.of(context),
                  child: TextButton.icon(
                    onPressed: () {
                      debugPrint('Pressed');
                    },
                    icon: const Icon(Icons.add),
                    label: const Text('This is Lebel'),
                  ),
                ),
                SleekTheme(
                  child: TextButton.icon(
                    onPressed: () {
                      debugPrint('Pressed');
                    },
                    icon: const Text('This is Lebel'),
                    label: const Icon(Icons.add),
                  ),
                ),
              ],
            ),
            const Text("Outlined Buttons"),
            Wrap(
              spacing: 8,
              children: [
                Theme(
                  data: ComicThemeData.of(context),
                  child: OutlinedButton(
                    onPressed: () {
                      debugPrint('Pressed');
                    },
                    child: const Text('Comic Theme'),
                  ),
                ),
                SleekTheme(
                  child: OutlinedButton(
                    onPressed: () {
                      debugPrint('Pressed');
                    },
                    child: const Text('Sleek Theme'),
                  ),
                ),
              ],
            ),
            const Text("Icon Buttons"),
            Wrap(
              spacing: 8,
              children: [
                Theme(
                  data: ComicIconButtonThemeData.of(context),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          debugPrint('Pressed');
                        },
                        icon: const Icon(Icons.favorite),
                      ),
                      IconButton(
                        onPressed: () {
                          debugPrint('Pressed');
                        },
                        icon: const Icon(Icons.add),
                      ),
                    ],
                  ),
                ),
                SleekTheme(
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          debugPrint('Pressed');
                        },
                        icon: const Icon(Icons.favorite),
                      ),
                      IconButton(
                        onPressed: () {
                          debugPrint('Pressed');
                        },
                        icon: const Icon(Icons.add),
                      ),
                    ],
                  ),
                ),
                Theme(
                  data: ComicIconButtonThemeData.of(context),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          debugPrint('Pressed');
                        },
                        icon: const Text('Comic Theme'),
                      ),
                    ],
                  ),
                ),
                SleekTheme(
                  child: IconButton(
                    onPressed: () {
                      debugPrint('Pressed');
                    },
                    icon: const Text('Sleek Theme'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
