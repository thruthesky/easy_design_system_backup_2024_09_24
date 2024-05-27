import 'package:flutter/material.dart';
import 'package:social_design_system/social_design_system.dart';

class ComicSnackBarsScreen extends StatelessWidget {
  const ComicSnackBarsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ComicTheme.of(context),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Comic SnackBar'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                margin: const EdgeInsets.all(24),
                behavior: SnackBarBehavior.floating,
                content: const Text('This is Comic SnackBar'),
                action: SnackBarAction(
                  onPressed: () {},
                  label: 'Action',
                ),
              ),
            ),
            child: const Text('Display Comic SnackBar'),
          ),
        ),
      ),
    );
  }
}
