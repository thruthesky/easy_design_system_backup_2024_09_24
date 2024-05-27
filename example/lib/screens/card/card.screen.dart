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
        child: Table(children: const [
          TableRow(
            children: [
              Text('Comic Theme'),
              Text('Sleek Theme'),
            ],
          ),
          TableRow(children: [
            ComicTheme(
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CardChild(),
                ),
              ),
            ),
            SleekTheme(
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CardChild(),
                ),
              ),
            ),
          ])
        ]),
      ),
    );
  }
}

class CardChild extends StatelessWidget {
  const CardChild({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ListTile(
          title: Text('Title'),
          subtitle: Text('Subtitle'),
          leading: Icon(Icons.ac_unit),
        ),
        Row(
          children: [
            const Spacer(),
            ElevatedButton(onPressed: () {}, child: const Text("YES")),
            ElevatedButton(onPressed: () {}, child: const Text("NO"))
          ],
        ),
      ],
    );
  }
}
