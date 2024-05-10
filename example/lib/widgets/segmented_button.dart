import 'package:flutter/material.dart';
import 'package:social_design_system/social_design_system.dart';

class SegmentedButtons extends StatefulWidget {
  const SegmentedButtons({super.key});

  @override
  State<SegmentedButtons> createState() => _SegmentedButtonsState();
}

class _SegmentedButtonsState extends State<SegmentedButtons> {
  Set<String> _selected = {'value1'};
  Set<String> _selected1 = {'value1'};

  void updateSelection(Set<String> newSelection) {
    setState(() {
      _selected = newSelection;
    });
  }

  void updateSelection1(Set<String> newSelection) {
    setState(() {
      _selected1 = newSelection;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Segmented Button'),
        const SizedBox(height: 16),
        Wrap(
          alignment: WrapAlignment.center,
          spacing: 16,
          runSpacing: 16,
          children: [
            Theme(
              data: ComicThemeData.of(context),
              child: Column(
                children: [
                  const Text('Comic'),
                  SegmentedButton(
                    selected: _selected,
                    segments: const [
                      ButtonSegment(value: 'value1', label: Text('Inbox')),
                      ButtonSegment(value: 'value2', label: Text('Primary')),
                      ButtonSegment(value: 'value3', label: Text('Others')),
                    ],
                    onSelectionChanged: updateSelection,
                  ),
                ],
              ),
            ),
            Theme(
              data: SleekThemeData.of(context),
              child: Column(
                children: [
                  const Text('Sleek'),
                  SegmentedButton(
                    selected: _selected1,
                    segments: const [
                      ButtonSegment(value: 'value1', label: Text('Inbox')),
                      ButtonSegment(value: 'value2', label: Text('Primary')),
                      ButtonSegment(value: 'value3', label: Text('Others')),
                    ],
                    onSelectionChanged: updateSelection1,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
