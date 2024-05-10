import 'package:flutter/material.dart';
import 'package:social_design_system/social_design_system.dart';

class Badges extends StatelessWidget {
  const Badges({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 24,
      children: [
        Theme(
          data: ComicThemeData.of(context),
          child: const Column(
            children: [
              Badge(
                isLabelVisible: true,
                label: Text('1'),
                smallSize: 8,
              ),
              Text('Comic Badge'),
            ],
          ),
        ),
        Theme(
          data: SleekThemeData.of(context),
          child: const Column(
            children: [
              Badge(
                isLabelVisible: true,
                label: Text('1'),
                smallSize: 8,
              ),
              Text('Sleek Badge'),
            ],
          ),
        ),
      ],
    );
  }
}
