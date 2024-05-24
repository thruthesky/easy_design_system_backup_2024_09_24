import 'package:flutter/material.dart';
import 'package:social_design_system/social_design_system.dart';

class CheckboxScreen extends StatefulWidget {
  const CheckboxScreen({super.key});

  @override
  State<CheckboxScreen> createState() => _CheckboxScreenState();
}

class _CheckboxScreenState extends State<CheckboxScreen> {
  bool comicCheckBoxOn = true;
  bool comicCheckBoxOff = false;

  bool sleekCheckBoxOn = true;
  bool sleekCheckBoxOff = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkbox'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Text('ComicTheme'),
            ),
            Theme(
              data: ComicTheme.of(context),
              child: Column(
                children: [
                  Row(
                    children: <Widget>[
                      Checkbox(
                        value: comicCheckBoxOn,
                        onChanged: (bool? value) {
                          setState(() {
                            comicCheckBoxOn = value!;
                          });
                        },
                      ),
                      const Text(
                        'On',
                      ),
                      const SizedBox(width: 16),
                      Checkbox(
                        value: comicCheckBoxOff,
                        onChanged: (bool? value) {
                          setState(() {
                            comicCheckBoxOff = value!;
                          });
                        },
                      ),
                      const Text(
                        'Off',
                      ),
                      const Checkbox(
                        value: true,
                        onChanged: null,
                      ),
                    ],
                  ),
                  const Row(
                    children: <Widget>[
                      Checkbox(
                        value: true,
                        onChanged: null,
                      ),
                      Text(
                        'On Disabled',
                      ),
                      SizedBox(width: 16),
                      Checkbox(
                        value: false,
                        onChanged: null,
                      ),
                      Text(
                        'Off Disabled',
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Text('SleekTheme'),
            ),
            Theme(
              data: SleekTheme.of(context),
              child: Column(
                children: [
                  Row(
                    children: <Widget>[
                      Checkbox(
                        value: sleekCheckBoxOn,
                        onChanged: (bool? value) {
                          setState(() {
                            sleekCheckBoxOn = value!;
                          });
                        },
                      ),
                      const Text(
                        'On',
                      ),
                      const SizedBox(width: 16),
                      Checkbox(
                        value: sleekCheckBoxOff,
                        onChanged: (bool? value) {
                          setState(() {
                            sleekCheckBoxOff = value!;
                          });
                        },
                      ),
                      const Text(
                        'Off',
                      ),
                    ],
                  ),
                  const Row(
                    children: <Widget>[
                      Checkbox(
                        value: true,
                        onChanged: null,
                      ),
                      Text(
                        'On Disabled',
                      ),
                      SizedBox(width: 16),
                      Checkbox(
                        value: false,
                        onChanged: null,
                      ),
                      Text(
                        'Off Disabled',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
