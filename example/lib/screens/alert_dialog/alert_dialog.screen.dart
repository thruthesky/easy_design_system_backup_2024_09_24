import 'package:flutter/material.dart';
import 'package:social_design_system/social_design_system.dart';

class AlertDialogScreen extends StatelessWidget {
  const AlertDialogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AlertDialog'),
      ),
      body: Center(
        child: Wrap(
          spacing: 8,
          children: [
            ElevatedButton(
              onPressed: () => showDialog(
                context: context,
                builder: (context) => Theme(
                  data: ComicTheme.of(context),
                  child: AlertDialog(
                    icon: const Icon(Icons.star),
                    title: const Text('Comic'),
                    actions: [
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Cancel'),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Ok'),
                      ),
                    ],
                  ),
                ),
              ),
              child: const Text('Comic Dialog'),
            ),
            ElevatedButton(
              onPressed: () => showDialog(
                context: context,
                builder: (context) => Theme(
                  data: SleekTheme.of(context),
                  child: AlertDialog(
                    icon: const Icon(Icons.star),
                    title: const Text('Sleek'),
                    actions: [
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Cancel'),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Ok'),
                      ),
                    ],
                  ),
                ),
              ),
              child: const Text('Sleek Dialog'),
            ),
          ],
        ),
      ),
    );
  }
}
