import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:social_design_system/social_design_system.dart';

class ProgressIndicators extends StatelessWidget {
  const ProgressIndicators({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Theme(
            data: ComicThemeData.of(context),
            child: const Column(
              children: [
                Text('Comic'),
                SizedBox(height: 16),
                LinearProgressIndicator(),
                SizedBox(height: 32),
                CircularProgressIndicator(),
              ],
            ),
          ),
        ),
        const SizedBox(width: 24),
        Expanded(
          child: Theme(
            data: SleekThemeData.of(context),
            child: const Column(
              children: [
                Text('Sleek'),
                SizedBox(height: 16),
                LinearProgressIndicator(),
                SizedBox(height: 32),
                CircularProgressIndicator(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
