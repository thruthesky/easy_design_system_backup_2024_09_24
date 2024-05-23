import 'package:flutter/material.dart';
import 'package:social_design_system/social_design_system.dart';

class CheckboxScreen extends StatefulWidget {
  const CheckboxScreen({super.key});

  @override
  State<CheckboxScreen> createState() => _CheckboxScreenState();
}

class _CheckboxScreenState extends State<CheckboxScreen> {
  bool checkbox1 = false;
  bool checkbox2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkbox'),
      ),
      body: Wrap(
        children: [
          Theme(
            data: ComicTheme.of(context),
            child: Checkbox(
              value: checkbox1,
              onChanged: (x) => setState(() {
                checkbox1 = !checkbox1;
              }),
            ),
          ),
          Theme(
            data: ComicTheme.of(context),
            child: Checkbox(
              value: checkbox2,
              onChanged: (x) => setState(() {
                checkbox2 = !checkbox2;
              }),
            ),
          ),
        ],
      ),
    );
  }
}
