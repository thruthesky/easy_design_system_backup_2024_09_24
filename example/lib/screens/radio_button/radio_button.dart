import 'package:example/widgets/nothing_to_learn.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:social_design_system/social_design_system.dart';

class RadioButtonScreen extends StatefulWidget {
  const RadioButtonScreen({super.key});

  @override
  State<RadioButtonScreen> createState() => _RadioButtonScreenState();
}

class _RadioButtonScreenState extends State<RadioButtonScreen> {
  String radio = 'radio1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Radio Button'),
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
                        children: [
                          Row(
                            children: [
                              Radio(
                                value: 'radio1',
                                groupValue: radio,
                                onChanged: (value) {},
                              ),
                              const Text('Selected')
                            ],
                          ),
                          Row(
                            children: [
                              Radio(
                                value: 'radio2',
                                groupValue: radio,
                                onChanged: (value) {},
                              ),
                              const Text('Not selected')
                            ],
                          ),
                          Row(
                            children: [
                              Radio(
                                  value: 'radio1',
                                  groupValue: radio,
                                  onChanged: null),
                              const Text('Disable selected')
                            ],
                          ),
                          Row(
                            children: [
                              Radio(
                                  value: 'radio2',
                                  groupValue: radio,
                                  onChanged: null),
                              const Text('Disable unselected')
                            ],
                          ),
                        ],
                      ),
                    ),
                    SleekTheme(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Radio(
                                value: 'radio1',
                                groupValue: radio,
                                onChanged: (value) {},
                              ),
                              const Text('Selected')
                            ],
                          ),
                          Row(
                            children: [
                              Radio(
                                value: 'radio2',
                                groupValue: radio,
                                onChanged: (value) {},
                              ),
                              const Text('Not selected')
                            ],
                          ),
                          Row(
                            children: [
                              Radio(
                                  value: 'radio1',
                                  groupValue: radio,
                                  onChanged: null),
                              const Text('Disable selected')
                            ],
                          ),
                          Row(
                            children: [
                              Radio(
                                  value: 'radio2',
                                  groupValue: radio,
                                  onChanged: null),
                              const Text('Disable unselected')
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
