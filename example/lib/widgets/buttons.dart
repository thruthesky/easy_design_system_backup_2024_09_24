import 'package:flutter/material.dart';
import 'package:social_design_system/social_design_system.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: [
        Theme(
          data: ComicThemeData.of(context),
          child: TextButton(
            onPressed: () {
              debugPrint('Comic TextButton pressed');
            },
            child: const Text('Comic TextButton'),
          ),
        ),
        Theme(
          data: SleekThemeData.of(context),
          child: TextButton(
            onPressed: () {
              debugPrint('Sleek TextButton pressed');
            },
            child: const Text('Sleek TextButton'),
          ),
        ),
        Theme(
          data: ComicThemeData.of(context),
          child: ElevatedButton(
            onPressed: () {
              debugPrint('Comic ElevatedButton pressed');
            },
            child: const Text('Comic ElevatedButton'),
          ),
        ),
        Theme(
          data: SleekThemeData.of(context),
          child: ElevatedButton(
            onPressed: () {
              debugPrint('Sleek ElevatedButton pressed');
            },
            child: const Text('Sleek ElevatedButton'),
          ),
        ),
      ],
    );
  }
}
