import 'package:flutter/material.dart';
import 'package:social_design_system/social_design_system.dart';

class IconButtonScreen extends StatelessWidget {
  const IconButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Icon Buttons'),
      ),
      body: Wrap(
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
        ],
      ),
    );
  }
}
