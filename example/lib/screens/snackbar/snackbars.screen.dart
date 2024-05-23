import 'package:example/screens/snackbar/comic.snackbar.screen.dart';
import 'package:example/screens/snackbar/sleek.snackbar.screen.dart';
import 'package:flutter/material.dart';

class SnackBarScreen extends StatelessWidget {
  const SnackBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SnackBars'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Wrap(
            children: [
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('This is a SnackBar'),
                    ),
                  );
                },
                child: const Text('Comic Style Snackbar'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => const ComicSnackBarsScreen(),
                  ),
                ),
                child: const Text('Comic Style Snackbar'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => const SleekSnackBarScreen(),
                  ),
                ),
                child: const Text('Sleek Style Snackbar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
