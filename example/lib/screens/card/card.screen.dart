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
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            const Text('Comic'),
            Theme(
              data: ComicTheme.of(context),
              child: const Card(
                child: CardContent(),
              ),
            ),
            const SizedBox(height: 32),
            const Text('Sleek'),
            Theme(
              data: SleekTheme.of(context),
              child: const Card(
                child: CardContent(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//  this is content only to display the card properly.
//  not necessarily part of the code above.
class CardContent extends StatelessWidget {
  const CardContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryFixedDim,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Icon(Icons.image, size: 32),
          ),
          const SizedBox(height: 24),
          const Text('Sample Card'),
        ],
      ),
    );
  }
}
