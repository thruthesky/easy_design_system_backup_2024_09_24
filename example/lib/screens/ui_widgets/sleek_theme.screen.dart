import 'package:flutter/material.dart';

class SleekThemeUiWidgetsScreen extends StatefulWidget {
  static const String routeName = '/SleekThemeUiWidgets';
  const SleekThemeUiWidgetsScreen({super.key});

  @override
  State<SleekThemeUiWidgetsScreen> createState() =>
      _SleekThemeUiWidgetsScreenState();
}

class _SleekThemeUiWidgetsScreenState extends State<SleekThemeUiWidgetsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ComicThemeUiWidgets'),
      ),
      body: const Column(
        children: [
          Text("ComicThemeUiWidgets"),
        ],
      ),
    );
  }
}
