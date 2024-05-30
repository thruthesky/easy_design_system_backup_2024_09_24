import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({
    super.key,
    required this.children,
    required this.label,
    this.indent = false,
    this.thickness,
  });

  final List<Widget> children;
  final String label;
  final bool indent;
  final double? thickness;

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
        Card(
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
                    height: 2,
                    thickness: thickness ?? 1.8,
                    color: Theme.of(context).dividerColor,
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
