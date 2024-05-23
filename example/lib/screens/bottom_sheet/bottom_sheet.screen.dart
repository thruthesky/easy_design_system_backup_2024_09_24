import 'package:flutter/material.dart';
import 'package:social_design_system/social_design_system.dart';

class BottomSheetScreen extends StatelessWidget {
  const BottomSheetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Sheet'),
      ),
      body: Wrap(
        spacing: 24,
        children: [
          Theme(
            data: ComicTheme.of(context),
            child: ElevatedButton(
              onPressed: () => showModalBottomSheet(
                context: context,
                builder: (context) => Theme(
                  data: ComicTheme.of(context),
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
              child: const Text('Display Comic Modal Bottomsheet'),
            ),
          ),
          Builder(builder: (context) {
            return Theme(
              data: ComicTheme.of(context),
              child: ElevatedButton(
                onPressed: () => showBottomSheet(
                  context: context,
                  builder: (context) => Theme(
                    data: ComicTheme.of(context),
                    child: BottomSheet(
                      onClosing: () {},
                      builder: (context) => SizedBox(
                        height: 200,
                        child: Center(
                          child: OutlinedButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('Close'),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                child: const Text('Display Comic Bottomsheet'),
              ),
            );
          }),
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
              child: const Text('Display Sleek Modal Bottomsheet'),
            ),
          ),
          Builder(builder: (context) {
            return Theme(
              data: SleekTheme.of(context),
              child: ElevatedButton(
                onPressed: () => showBottomSheet(
                  context: context,
                  builder: (context) => Theme(
                    data: SleekTheme.of(context),
                    child: BottomSheet(
                      onClosing: () {},
                      builder: (context) => SizedBox(
                        height: 200,
                        child: Center(
                          child: OutlinedButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('Close'),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                child: const Text('Display Sleek Bottomsheet'),
              ),
            );
          }),
        ],
      ),
    );
  }
}
