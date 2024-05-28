import 'package:example/widgets/nothing_to_learn.dart';
import 'package:flutter/material.dart';
import 'package:social_design_system/social_design_system.dart';

class SwitchScreen extends StatefulWidget {
  const SwitchScreen({super.key});

  @override
  State<SwitchScreen> createState() => _SwitchScreenState();
}

class _SwitchScreenState extends State<SwitchScreen> {
  bool light = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Switch'),
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
                          Row(
                            children: [
                              Switch(
                                value: true,
                                onChanged: (bool value) {},
                              ),
                              const Text('On')
                            ],
                          ),
                          Row(
                            children: [
                              Switch(
                                value: false,
                                onChanged: (bool value) {},
                              ),
                              const Text('Off')
                            ],
                          ),
                          const Row(
                            children: [
                              Switch(
                                value: true,
                                onChanged: null,
                              ),
                              Text('On Disabled')
                            ],
                          ),
                          const Row(
                            children: [
                              Switch(
                                value: false,
                                onChanged: null,
                              ),
                              Text('Off Disabled')
                            ],
                          )
                        ],
                      ),
                    ),
                    SleekTheme(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Switch(
                                value: true,
                                onChanged: (bool value) {},
                              ),
                              const Text('On')
                            ],
                          ),
                          Row(
                            children: [
                              Switch(
                                value: false,
                                onChanged: (bool value) {},
                              ),
                              const Text('Off')
                            ],
                          ),
                          const Row(
                            children: [
                              Switch(
                                value: true,
                                onChanged: null,
                              ),
                              Text('On Disabled')
                            ],
                          ),
                          const Row(
                            children: [
                              Switch(
                                value: false,
                                onChanged: null,
                              ),
                              Text('Off Disabled')
                            ],
                          )
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
