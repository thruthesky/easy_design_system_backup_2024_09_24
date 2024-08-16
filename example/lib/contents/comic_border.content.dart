import 'package:flutter/material.dart';

class ComicBorderThemeDataScreen extends StatefulWidget {
  static const String routeName = '/ComicBorderThemeData';
  const ComicBorderThemeDataScreen({super.key});

  @override
  State<ComicBorderThemeDataScreen> createState() =>
      _ComicBorderThemeDataScreenState();
}

class _ComicBorderThemeDataScreenState
    extends State<ComicBorderThemeDataScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ComicBorderThemeData'),
      ),
      body: const Column(
        children: [
          Text("Why?"),
          Text(
            "Comic theme has a thick border. But you may not want it on every widget. "
            "So, you can use ComicBorderThemeData to add the border to a specific widget you want.",
          ),
        ],
      ),
    );
  }
}
