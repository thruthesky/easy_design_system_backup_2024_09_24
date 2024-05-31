import 'package:example/widgets/code_to_learn.dart';
import 'package:flutter/material.dart';
import 'package:social_design_system/social_design_system.dart';

class BirthdayPickerScreen extends StatefulWidget {
  static const routeName = '/birthday_picker';

  const BirthdayPickerScreen({super.key});

  @override
  State<BirthdayPickerScreen> createState() => _BirthdayPickerScreenState();
}

class _BirthdayPickerScreenState extends State<BirthdayPickerScreen> {
  int? day;
  int? month;
  int? year;
  String text = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Birthday Picker'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ComicTheme(
                child: ListTile(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) => SleekTheme(
                        child: BirthdayDialogPicker(
                          initialBirthDay: day,
                          initialBirthMonth: month,
                          initialBirthYear: year,
                          onSelectedBirthDay: (v) {
                            print(v);
                            day = v!;
                            setState(() {});
                          },
                          onSelectedBirthMonth: (v) {
                            print(v);
                            month = v!;
                          },
                          onSelectedBirthYear: (v) {
                            print(v);
                            year = v!;
                          },
                          onSave: () {
                            if (day == null || month == null || year == null) {
                              Navigator.pop(context);
                              return;
                            }

                            print('$day/$month/$year');
                            text = '$day/$month/$year';
                            setState(() {});
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    );
                  },
                  trailing: const Icon(Icons.calendar_month),
                  title:
                      text.isEmpty ? const Text('Select birthday') : Text(text),
                ),
              ),
              const CodeToLearn(md: '''
## BirthdayDialogPicker
- The `BirthdayDialogPicker` is a custom widget within our social design system designed to 
  facilitate the selection of birthdays. It enables users to easily choose their birthday from a dialog.
- To Apply a Theme, simply wrap the `BirthdayDialogPicker` widget with the `ComicTheme` widget.

```dart
ComicTheme(
  child: ListTile(
    onTap: () {
      showDialog(
        context: context,
        builder: (context) => ComicTheme(
          child: BirthdayDialogPicker(
            initialBirthDay: day,
            initialBirthMonth: month,
            initialBirthYear: year,
            onSelectedBirthDay: (v) {
              print(v);
            },
            onSelectedBirthMonth: (v) {
              print(v);
            },
            onSelectedBirthYear: (v) {
              print(v);
            },
            onSave: () {
              Navigator.pop(context);
            },
          ),
        ),
      );
    },
    trailing: const Icon(Icons.calendar_month),
    title:Text('Select birthday') ,
  ),
),
```
          '''),
              const SizedBox(
                height: 48,
              )
            ],
          ),
        ),
      ),
    );
  }
}
