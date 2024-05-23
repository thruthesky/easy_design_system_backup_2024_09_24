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
      body: Column(
        children: [
          Theme(
            data: ComicTheme.of(context),
            child: const Card(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Text('Card Comic Theme'),
              ),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Theme(
            data: SleekTheme.of(context),
            child: const Card(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Text('Card Sleek Theme'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
