import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:social_design_system/social_design_system.dart';

class Badges extends StatelessWidget {
  const Badges({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 24,
      runSpacing: 24,
      children: [
        Theme(
          data: ComicThemeData.of(context),
          child: SizedBox(
            height: 40,
            width: 100,
            child: Stack(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Comic'),
                ),
                const Align(
                  alignment: Alignment(.8, -1.3),
                  child: Badge(
                    largeSize: 16,
                    isLabelVisible: true,
                    label: Text('5'),
                  ),
                ),
              ],
            ),
          ),
        ),
        Theme(
          data: ComicThemeData.of(context),
          child: SizedBox(
            height: 40,
            width: 100,
            child: Stack(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Comic'),
                ),
                const Align(
                  alignment: Alignment(.8, -1.3),
                  child: Badge(
                    smallSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
        Theme(
          data: SleekThemeData.of(context),
          child: SizedBox(
            height: 40,
            width: 100,
            child: Stack(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Comic'),
                ),
                const Align(
                  alignment: Alignment(.8, -1.3),
                  child: Badge(
                    largeSize: 16,
                    isLabelVisible: true,
                    label: Text('5'),
                  ),
                ),
              ],
            ),
          ),
        ),
        Theme(
          data: SleekThemeData.of(context),
          child: SizedBox(
            height: 40,
            width: 100,
            child: Stack(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Comic'),
                ),
                const Align(
                  alignment: Alignment(.8, -1.3),
                  child: Badge(
                    smallSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
