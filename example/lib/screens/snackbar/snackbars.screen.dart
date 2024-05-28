import 'package:example/screens/snackbar/comic.snackbar.screen.dart';
import 'package:example/screens/snackbar/sleek.snackbar.screen.dart';
import 'package:flutter/material.dart';
import 'package:markdown_widget/markdown_widget.dart';

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
          child: SingleChildScrollView(
            child: Column(
              children: [
                Wrap(
                  children: [
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
                const SizedBox(height: 40),
                const Divider(),
                const SizedBox(height: 16),
                const MarkdownBlock(
                  data: '''
`SnackBar` are splits into two different screens because of the reason its being dependent on `Scaffold`. 
            
Just wrap the `Scaffold` with `Theme` or give the `Material` a `ThemeData` and let the SDS do the designing.

```dart
Theme(
    data: ComicTheme.of(context),
    child: Scaffold(
      appBar: AppBar(
      title: const Text('Comic SnackBar'),
        ),
    body: Center(
      child: ElevatedButton(
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
      ),
    ),
  )
```
            ''',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
