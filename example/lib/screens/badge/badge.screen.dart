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
          children: [
            const Text('Comic Theme'),
            Theme(
              data: ComicThemeData.of(context),
              child: const Badge(
                label: Text('5'),
              ),
            ),
            const Text('Sleek Theme'),
            Theme(
              data: SleekThemeData.of(context),
              child: const Badge(
                label: Text('5'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
