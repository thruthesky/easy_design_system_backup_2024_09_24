import 'package:flutter/material.dart';
import 'package:social_design_system/social_design_system.dart';

class SleekSnackBarScreen extends StatelessWidget {
  const SleekSnackBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: SleekTheme.of(context),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Sleek SnackBar'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: const Text('This is Sleek SnackBar'),
                action: SnackBarAction(
                  onPressed: () {},
                  label: 'Action',
                ),
              ),
            ),
            child: const Text('Display Sleek SnackBar'),
          ),
        ),
      ),
    );
  }
}
