import 'package:flutter/material.dart';
import 'package:social_design_system/social_design_system.dart';

class ChipScreen extends StatefulWidget {
  const ChipScreen({super.key});

  @override
  State<ChipScreen> createState() => _ChipScreenState();
}

class _ChipScreenState extends State<ChipScreen> {
  String selectedChip = "ChoiceChip1";

  ThemeData? _themeData;
  @override
  Widget build(BuildContext context) {
    _themeData ??= Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chip'),
      ),
      body: Center(
          child: Theme(
        data: _themeData!,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 24),
              Wrap(
                children: [
                  TextButton(
                    onPressed: () {
                      _themeData = ComicTheme.of(context);
                      setState(() {});
                    },
                    child: const Text("Comic Theme"),
                  ),
                  TextButton(
                    onPressed: () {
                      _themeData = SleekTheme.of(context);
                      setState(() {});
                    },
                    child: const Text("Sleek Theme"),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              const Chip(label: Text("Chip")),
              const SizedBox(height: 24),
              Wrap(
                spacing: 8,
                children: [
                  ChoiceChip(
                    label: const Text("ChoiceChip1"),
                    selected: selectedChip == "ChoiceChip1",
                    onSelected: (bool selected) {
                      setState(() {
                        selectedChip = "ChoiceChip1";
                      });
                    },
                  ),
                  ChoiceChip(
                    label: const Text("ChoiceChip2"),
                    selected: selectedChip == "ChoiceChip2",
                    onSelected: (bool selected) {
                      setState(() {
                        selectedChip = "ChoiceChip2";
                      });
                    },
                  ),
                  ChoiceChip(
                    label: const Text("ChoiceChip3"),
                    selected: selectedChip == "ChoiceChip3",
                    onSelected: (bool selected) {
                      setState(() {
                        selectedChip = "ChoiceChip3";
                      });
                    },
                  ),
                  const ChoiceChip(
                    label: Text("ChoiceChip4"),
                    selected: true,
                  ),
                  const ChoiceChip(
                    label: Text("ChoiceChip3"),
                    selected: false,
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Wrap(
                children: [
                  InputChip(
                    label: const Text("InputChip1"),
                    onSelected: (value) {
                      print(value);
                    },
                  ),
                  InputChip(
                    label: const Text("InputChip2 Selected"),
                    selected: true,
                    onSelected: (value) {
                      print(value);
                    },
                  ),
                  const InputChip(
                    label: Text("InputChip3 disabled"),
                    selected: true,
                  ),
                  const InputChip(label: Text("InputChip4 disabled")),
                  InputChip(
                    label: const Text("InputChip5 With Delete"),
                    onSelected: (value) {
                      print(value);
                    },
                    onDeleted: () {
                      print("onDeleted");
                    },
                  ),
                  InputChip(
                    label: const Text("InputChip3 disabled"),
                    selected: true,
                    onDeleted: () {
                      print("onDeleted");
                    },
                    isEnabled: false,
                  ),
                ],
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      )),
    );
  }
}
