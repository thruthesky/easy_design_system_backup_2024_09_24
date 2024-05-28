import 'package:example/widgets/nothing_to_learn.dart';
import 'package:flutter/material.dart';
import 'package:social_design_system/social_design_system.dart';

class DropdownScreen extends StatefulWidget {
  const DropdownScreen({super.key});

  @override
  State<DropdownScreen> createState() => _DropdownScreenState();
}

class _DropdownScreenState extends State<DropdownScreen> {
  List<String> list = <String>['One', 'Two', 'Three', 'Four'];
  final TextEditingController menuController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    String dropdownValue = list.first;
    return Scaffold(
      appBar: AppBar(title: const Text("Dropdown Screen")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Table(
              children: [
                const TableRow(
                  children: [
                    Text("Comic Theme"),
                    Text("Sleek There"),
                  ],
                ),
                TableRow(
                  children: [
                    ComicTheme(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 24,
                          ),
                          DropdownMenu<String>(
                            initialSelection: 'One',
                            controller: menuController,
                            label: const Text('Dropdown Menu'),
                            onSelected: (String? v) {},
                            dropdownMenuEntries:
                                list.map<DropdownMenuEntry<String>>((String v) {
                              return DropdownMenuEntry<String>(
                                value: v,
                                label: v,
                                enabled: v != 'Four',
                              );
                            }).toList(),
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          PopupMenuButton<String>(
                            initialValue: '',
                            child: const Card(
                              child: Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Text('Popup Menu'),
                              ),
                            ),
                            onSelected: (String item) {},
                            itemBuilder: (BuildContext context) =>
                                list.map<PopupMenuEntry<String>>((String v) {
                              return PopupMenuItem<String>(
                                value: v,
                                child: Text(v),
                              );
                            }).toList(),
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          MenuAnchor(
                            builder: (BuildContext context,
                                MenuController controller, Widget? child) {
                              return InkWell(
                                onTap: () {
                                  if (controller.isOpen) {
                                    controller.close();
                                  } else {
                                    controller.open();
                                  }
                                },
                                child: const Card(
                                  child: Padding(
                                    padding: EdgeInsets.all(16.0),
                                    child: Text('Anchor Menu'),
                                  ),
                                ),
                              );
                            },
                            menuChildren: list.map((String v) {
                              return MenuItemButton(
                                onPressed: () => {},
                                child: Text(v),
                              );
                            }).toList(),
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 16.0),
                            child: DropdownButton<String>(
                              isExpanded: true,
                              value: dropdownValue,
                              onChanged: (String? value) {
                                // This is called when the user selects an item.
                                setState(() {
                                  dropdownValue = value!;
                                });
                              },
                              items: list.map<DropdownMenuItem<String>>(
                                  (String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SleekTheme(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 24,
                          ),
                          DropdownMenu<String>(
                            initialSelection: 'One',
                            controller: menuController,
                            label: const Text('Dropdown Menu'),
                            onSelected: (String? v) {},
                            dropdownMenuEntries:
                                list.map<DropdownMenuEntry<String>>((String v) {
                              return DropdownMenuEntry<String>(
                                value: v,
                                label: v,
                                enabled: v != 'Four',
                              );
                            }).toList(),
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          PopupMenuButton<String>(
                            initialValue: '',
                            child: const Card(
                              child: Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Text('Popup Menu'),
                              ),
                            ),
                            onSelected: (String item) {},
                            itemBuilder: (BuildContext context) =>
                                list.map<PopupMenuEntry<String>>((String v) {
                              return PopupMenuItem<String>(
                                value: v,
                                child: Text(v),
                              );
                            }).toList(),
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          MenuAnchor(
                            builder: (BuildContext context,
                                MenuController controller, Widget? child) {
                              return InkWell(
                                onTap: () {
                                  if (controller.isOpen) {
                                    controller.close();
                                  } else {
                                    controller.open();
                                  }
                                },
                                child: const Card(
                                  child: Padding(
                                    padding: EdgeInsets.all(16.0),
                                    child: Text('Anchor Menu'),
                                  ),
                                ),
                              );
                            },
                            menuChildren: list.map((String v) {
                              return MenuItemButton(
                                onPressed: () => {},
                                child: Text(v),
                              );
                            }).toList(),
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: DropdownButton<String>(
                              isExpanded: true,
                              value: dropdownValue,
                              onChanged: (String? value) {
                                // This is called when the user selects an item.
                                setState(() {
                                  dropdownValue = value!;
                                });
                              },
                              items: list.map<DropdownMenuItem<String>>(
                                  (String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: NothingToLearn(),
            )
          ],
        ),
      ),
    );
  }
}
