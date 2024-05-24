import 'package:flutter/material.dart';
import 'package:social_design_system/social_design_system.dart';

class DialogScreen extends StatelessWidget {
  const DialogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialog'),
      ),
      body: Center(
        child: Wrap(
          alignment: WrapAlignment.center,
          spacing: 8,
          children: [
            // Dialogs
            ElevatedButton(
              onPressed: () => showDialog(
                barrierColor:
                    Theme.of(context).colorScheme.scrim.withAlpha(100),
                context: context,
                builder: (context) => Theme(
                  data: ComicTheme.of(context),
                  child: Builder(builder: (context) {
                    return const Dialog(
                      child: DialogContent(),
                    );
                  }),
                ),
              ),
              child: const Text('Comic Dialog'),
            ),
            ElevatedButton(
              onPressed: () => showDialog(
                context: context,
                builder: (context) => Theme(
                  data: SleekTheme.of(context),
                  child: const Dialog(
                    child: DialogContent(),
                  ),
                ),
              ),
              child: const Text('Sleek Dialog'),
            ),
            // Alert Dialogs
            ElevatedButton(
              onPressed: () => showDialog(
                context: context,
                builder: (context) => Theme(
                  data: ComicTheme.of(context),
                  child: AlertDialog(
                    icon: const Icon(Icons.star),
                    title: const Text('Comic'),
                    content:
                        const Text('This is an alert dialog for comic theme.'),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(),
                        child: const Text('Ok'),
                      ),
                    ],
                  ),
                ),
              ),
              child: const Text('Comic Alert Dialog'),
            ),
            ElevatedButton(
              onPressed: () => showDialog(
                context: context,
                builder: (context) => Theme(
                  data: SleekTheme.of(context),
                  child: AlertDialog(
                    icon: const Icon(Icons.star),
                    title: const Text('Sleek'),
                    content:
                        const Text('This is an alert dialog for sleek theme.'),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(),
                        child: const Text('Ok'),
                      ),
                    ],
                  ),
                ),
              ),
              child: const Text('Sleek Alert Dialog'),
            ),
            ElevatedButton(
              onPressed: () => showDialog(
                context: context,
                builder: (context) => Theme(
                  data: ComicTheme.of(context),
                  child: const SimpleDialog(
                    children: [
                      DialogContent(),
                    ],
                  ),
                ),
              ),
              child: const Text('Comic Simple Dialog'),
            ),
            ElevatedButton(
              onPressed: () => showDialog(
                context: context,
                builder: (context) => Theme(
                  data: SleekTheme.of(context),
                  child: const SimpleDialog(
                    children: [
                      DialogContent(),
                    ],
                  ),
                ),
              ),
              child: const Text('Sleek Simple Dialog'),
            ),
          ],
        ),
      ),
    );
  }
}

// This is a content only for dialog, not necessarily part of the code above

class DialogContent extends StatelessWidget {
  const DialogContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: Text(
                'This is a Dialog',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Continue'),
          ),
        ],
      ),
    );
  }
}
