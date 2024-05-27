import 'package:flutter/material.dart';

class NothingToLearn extends StatelessWidget {
  const NothingToLearn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Divider(),
        Text(
            "Soical design system will automatically enhance the UI of your app. Just continue building your app."),
      ],
    );
  }
}
