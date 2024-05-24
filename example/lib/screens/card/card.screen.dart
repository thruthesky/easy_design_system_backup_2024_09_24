import 'package:flutter/material.dart';
import 'package:social_design_system/social_design_system.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Comic Theme'),
            Theme(
              data: ComicTheme.of(context),
              child: const Card(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text('Card Comic Theme'),
                ),
              ),
            ),
            Theme(
              data: ComicTheme.of(context),
              child: const Card.outlined(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text('Card Outlined Comic Theme'),
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            const Text('Sleek Theme'),
            Theme(
              data: SleekTheme.of(context),
              child: const Card(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text('Card Sleek Theme'),
                ),
              ),
            ),
            Theme(
              data: SleekTheme.of(context),
              child: const Card.filled(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text('Card Filled Sleek Theme'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
