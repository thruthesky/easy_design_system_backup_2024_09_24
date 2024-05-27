import 'package:example/widgets/nothing_to_learn.dart';
import 'package:flutter/material.dart';
import 'package:social_design_system/social_design_system.dart';

class BadgeScreen extends StatefulWidget {
  static const String routeName = '/Badge';
  const BadgeScreen({super.key});

  @override
  State<BadgeScreen> createState() => _BadgeScreenState();
}

class _BadgeScreenState extends State<BadgeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Badge'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Comic Theme'),
            const SizedBox(height: 8),
            Theme(
              data: ComicTheme.of(context),
              child: const Badge(
                label: Text('5'),
              ),
            ),
            const SizedBox(height: 24),
            const Text('Sleek Theme'),
            const SizedBox(height: 8),
            Theme(
              data: SleekThemeData.of(context),
              child: const Badge(
                label: Text('5'),
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
