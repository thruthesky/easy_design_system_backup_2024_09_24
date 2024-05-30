import 'package:flutter/material.dart';
import 'package:social_design_system/social_design_system.dart';

class SettingScreen extends StatefulWidget {
  static const String routeName = '/Setting';
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Setting'),
      ),
      body: const Column(
        children: [
          Padding(
            padding: EdgeInsets.all(24.0),
            child: ComicTheme(
              child: SettingItems(
                label: 'Comic Theme Settings',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(24.0),
            child: SleekTheme(
              child: SettingItems(
                label: 'Comic Theme Settings',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SettingItems extends StatelessWidget {
  const SettingItems({
    super.key,
    required this.label,
  });
  final String label;

  @override
  Widget build(BuildContext context) {
    return Settings(
      label: label,
      children: [
        ListTile(
          visualDensity: VisualDensity.compact,
          title: const Text('Notifications'),
          subtitle: const Text('Receive notifications'),
          leading: const Icon(Icons.notifications_outlined),
          trailing: const Icon(Icons.chevron_right_rounded),
          onTap: () => debugPrint('Item 1'),
        ),
        ListTile(
          visualDensity: VisualDensity.compact,
          title: const Text('Favorites'),
          subtitle: const Text('Want to know who likes you?'),
          leading: const Icon(Icons.favorite_border_outlined),
          trailing: const Icon(
            Icons.arrow_right_rounded,
            size: 32,
          ),
          onTap: () => debugPrint('Item 2'),
        ),
        ListTile(
          title: const Text('Privacy Policy'),
          leading: const Icon(Icons.shield_outlined),
          trailing: const Icon(Icons.arrow_circle_right_outlined),
          onTap: () => debugPrint('Item 3'),
        ),
      ],
    );
  }
}
