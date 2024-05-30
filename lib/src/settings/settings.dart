import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings(
      {super.key,
      required this.children,
      required this.label,
      this.indent = false});

  final List<Widget> children;
  final String label;
  final bool indent;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(label),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Theme.of(context).colorScheme.secondary,
              width: 1.6,
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTileTheme(
                child: ListView.separated(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  primary: false,
                  physics: const NeverScrollableScrollPhysics(),
                  separatorBuilder: (context, index) => Divider(
                    indent: 16,
                    endIndent: 16,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  itemCount: children.length,
                  itemBuilder: (context, index) => children[index],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
