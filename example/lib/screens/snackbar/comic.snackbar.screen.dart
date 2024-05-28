import 'package:example/widgets/nothing_to_learn.dart';
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
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              ScaffoldMessenger.of(context).removeCurrentSnackBar();
              Navigator.of(context).pop();
            },
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: const Text('This is Comic SnackBar'),
                    action: SnackBarAction(
                      onPressed: () {},
                      label: 'Action',
                    ),
                  ),
                ),
                child: const Text('Display Comic SnackBar'),
              ),
              const NothingToLearn(),
            ],
          ),
        ),
      ),
    );
  }
}
