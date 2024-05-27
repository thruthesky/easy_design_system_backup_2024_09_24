import 'package:flutter/material.dart';
import 'package:social_design_system/social_design_system.dart';

class AppBarScreen extends StatefulWidget {
  const AppBarScreen({super.key});

  @override
  State<AppBarScreen> createState() => _AppBarScreenState();
}

class _AppBarScreenState extends State<AppBarScreen> {
  ThemeData? _themeData;

  @override
  Widget build(BuildContext context) {
    _themeData ??= Theme.of(context);
    return Theme(
      data: _themeData!,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("AppBar"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Not much changed in Sleek Theme"),
              TextButton(
                child: const Text("Sleek Theme"),
                onPressed: () {
                  setState(() {
                    _themeData = SleekTheme.of(context);
                  });
                },
              ),
              TextButton(
                child: const Text("Comic Theme"),
                onPressed: () {
                  setState(() {
                    _themeData = ComicTheme.of(context);
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
