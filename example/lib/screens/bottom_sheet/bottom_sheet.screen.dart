import 'package:flutter/material.dart';
import 'package:social_design_system/social_design_system.dart';

class BottomSheetScreen extends StatelessWidget {
  const BottomSheetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Sheets'),
      ),
      body: Wrap(
        children: [
          const ComicBottomSheet(),
          TextButton(
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
          const SleekBottomSheet(),
          TextButton(
            onPressed: () => showModalBottomSheet(
              context: context,
              builder: (context) => Theme(
                data: SleekTheme.of(context),
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
        ],
      ),
    );
  }
}

//  to prevent the error "No Scaffold widget found."
class ComicBottomSheet extends StatelessWidget {
  const ComicBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
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
                    Navigator.pop(context);
                  },
                  child: const Text("Close bottom Sheet"),
                ),
              ),
            ),
          ),
        ),
      ),
      child: const Text('Display Comic Bottomsheet'),
    );
  }
}

class SleekBottomSheet extends StatelessWidget {
  const SleekBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
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
                    Navigator.pop(context);
                  },
                  child: const Text("Close bottom Sheet"),
                ),
              ),
            ),
          ),
        ),
      ),
      child: const Text('Display Sleek Bottomsheet'),
    );
  }
}
