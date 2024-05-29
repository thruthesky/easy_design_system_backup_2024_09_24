import 'package:example/widgets/nothing_to_learn.dart';
import 'package:flutter/material.dart';
import 'package:social_design_system/social_design_system.dart';

class ChipScreen extends StatefulWidget {
  const ChipScreen({super.key});

  @override
  State<ChipScreen> createState() => _ChipScreenState();
}

class _ChipScreenState extends State<ChipScreen> {
  bool c1 = true;
  bool c2 = true;
  bool ic1 = true;
  bool ic2 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chip'),
      ),
<<<<<<< HEAD
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
                      debugPrint(value.toString());
                    },
                  ),
                  InputChip(
                    label: const Text("InputChip2 Selected"),
                    selected: true,
                    onSelected: (value) {
                      debugPrint(value.toString());
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
                      debugPrint(value.toString());
                    },
                    onDeleted: () {
                      debugPrint("onDeleted");
                    },
                  ),
                  InputChip(
                    label: const Text("InputChip3 disabled"),
                    selected: true,
                    onDeleted: () {
                      debugPrint("onDeleted");
                    },
                    isEnabled: false,
                  ),
                ],
              ),
              const SizedBox(height: 24),
            ],
          ),
=======
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            Table(
              children: [
                const TableRow(
                  children: [
                    Text("Comic Theme"),
                    Text("Sleek Theme"),
                  ],
                ),
                TableRow(
                  children: [
                    ComicTheme(
                      child: ChoiceChip(
                        label: const Text("ChoiceChip"),
                        selected: c1,
                        onSelected: (v) => setState(() => c1 = v),
                      ),
                    ),
                    SleekTheme(
                      child: ChoiceChip(
                        label: const Text("ChoiceChip"),
                        selected: c2,
                        onSelected: (v) => setState(() => c2 = v),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    ComicTheme(
                      child: InputChip(
                        label: const Text("InputChip"),
                        selected: ic1,
                        onSelected: (v) => setState(() => ic1 = v),
                      ),
                    ),
                    SleekTheme(
                      child: InputChip(
                        label: const Text("InputChip"),
                        selected: ic2,
                        onSelected: (v) => setState(() => ic2 = v),
                      ),
                    ),
                  ],
                )
              ],
            ),
            const NothingToLearn(),
          ],
>>>>>>> 8e7f2794fbdf1b0c06d4481e767a012f8def7a1f
        ),
      ),
    );
  }
}
