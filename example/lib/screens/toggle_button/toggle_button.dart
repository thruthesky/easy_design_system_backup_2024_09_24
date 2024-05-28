import 'package:example/widgets/nothing_to_learn.dart';
import 'package:flutter/material.dart';
import 'package:social_design_system/social_design_system.dart';

class ToggleButtonScreen extends StatefulWidget {
  const ToggleButtonScreen({super.key});

  @override
  State<ToggleButtonScreen> createState() => _ToggleButtonScreenState();
}

class _ToggleButtonScreenState extends State<ToggleButtonScreen> {
  List<bool> isSelected = [true, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Toggle Button'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Table(
              children: [
                const TableRow(
                  children: [
                    Text('Comic Theme'),
                    Text('Sleek Theme'),
                  ],
                ),
                TableRow(
                  children: [
                    ComicTheme(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ToggleButtons(
                            isSelected: const [true, false, false],
                            onPressed: (int index) {},
                            children: const <Widget>[
                              Text('ABC'),
                              Text('DEF'),
                              Text('GHI'),
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          ToggleButtons(
                            isSelected: const [false, true, false],
                            onPressed: (int index) {},
                            children: const <Widget>[
                              Text('ABC'),
                              Text('DEF'),
                              Text('GHI'),
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          ToggleButtons(
                            isSelected: const [false, false, true],
                            onPressed: (int index) {},
                            children: const <Widget>[
                              Text('ABC'),
                              Text('DEF'),
                              Text('GHI'),
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          ToggleButtons(
                            isSelected: const [true, true, true],
                            onPressed: (int index) {},
                            children: const <Widget>[
                              Icon(Icons.arrow_back),
                              Icon(Icons.graphic_eq_rounded),
                              Icon(Icons.arrow_forward),
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          ToggleButtons(
                            isSelected: const [true, false, false],
                            onPressed: null,
                            children: const <Widget>[
                              Icon(Icons.arrow_back),
                              Icon(Icons.graphic_eq_rounded),
                              Icon(Icons.arrow_forward),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SleekTheme(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ToggleButtons(
                            isSelected: const [true, false, false],
                            onPressed: (int index) {},
                            children: const <Widget>[
                              Text('ABC'),
                              Text('DEF'),
                              Text('GHI'),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          ToggleButtons(
                            isSelected: const [false, true, false],
                            onPressed: (int index) {},
                            children: const <Widget>[
                              Text('ABC'),
                              Text('DEF'),
                              Text('GHI'),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          ToggleButtons(
                            isSelected: const [false, false, true],
                            onPressed: (int index) {},
                            children: const <Widget>[
                              Text('ABC'),
                              Text('DEF'),
                              Text('GHI'),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          ToggleButtons(
                            isSelected: const [true, true, true],
                            onPressed: (int index) {},
                            children: const <Widget>[
                              Icon(Icons.arrow_back),
                              Icon(Icons.graphic_eq_rounded),
                              Icon(Icons.arrow_forward),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          ToggleButtons(
                            isSelected: const [true, false, false],
                            onPressed: null,
                            children: const <Widget>[
                              Icon(Icons.arrow_back),
                              Icon(Icons.graphic_eq_rounded),
                              Icon(Icons.arrow_forward),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: NothingToLearn(),
            )
          ],
        ),
      ),
    );
  }
}
