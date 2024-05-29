import 'package:flutter/material.dart';
import 'package:social_design_system/social_design_system.dart';

class ComicThemeUiWidgetsScreen extends StatefulWidget {
  static const String routeName = '/ComicThemeUiWidgets';
  const ComicThemeUiWidgetsScreen({super.key});

  @override
  State<ComicThemeUiWidgetsScreen> createState() =>
      _ComicThemeUiWidgetsScreenState();
}

class _ComicThemeUiWidgetsScreenState extends State<ComicThemeUiWidgetsScreen> {
  @override
  Widget build(BuildContext context) {
    return ComicTheme(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('ComicThemeUiWidgets'),
        ),
        body: Column(
          children: [
            const Text("List of UI Widgets with Comic Theme"),
            ElevatedButton(
                onPressed: () {}, child: const Text('Elevated Button')),
            const ListTile(
              title: Text('List Tile'),
              subtitle: Text('List Tile Subtitle'),
            ),
          ],
        ),
      ),
    );
  }
}
