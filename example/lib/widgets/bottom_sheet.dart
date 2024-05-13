import 'package:flutter/material.dart';
import 'package:social_design_system/social_design_system.dart';

class BottomSheets extends StatelessWidget {
  const BottomSheets({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 24,
      children: [
        Theme(
          data: ComicThemeData.of(context),
          child: ElevatedButton(
            onPressed: () => showModalBottomSheet(
              context: context,
              builder: (context) => Theme(
                data: ComicThemeData.of(context),
                child: BottomSheet(
                  onClosing: () {},
                  builder: (context) => const SizedBox(
                    height: 200,
                    child: Center(
                      child: Text('Comic'),
                    ),
                  ),
                ),
              ),
            ),
            child: const Text('Display Comic Bottomsheet'),
          ),
        ),
        Theme(
          data: SleekThemeData.of(context),
          child: ElevatedButton(
            onPressed: () => showModalBottomSheet(
              context: context,
              builder: (context) => Theme(
                data: SleekThemeData.of(context),
                child: BottomSheet(
                  onClosing: () {},
                  builder: (context) => const SizedBox(
                    height: 200,
                    child: Center(
                      child: Text('Sleek'),
                    ),
                  ),
                ),
              ),
            ),
            child: const Text('Display Sleek Bottomsheet'),
          ),
        ),
      ],
    );
  }
}
