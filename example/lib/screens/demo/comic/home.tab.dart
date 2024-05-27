import 'package:example/screens/demo/widgets/list_tile.dart';
import 'package:flutter/material.dart';
import 'package:social_design_system/social_design_system.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({
    super.key,
    required TabController tabController,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: _tabController,
      children: [
        SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Card(child: Text('Card has a border already')),
              const SizedBox(height: 24),
              const Card(
                child: Column(
                  children: [
                    ListTileTheme(
                      child: ListTile(
                        title: Text('Comic ListTile'),
                        subtitle: Text('Subtitle'),
                        leading: Icon(Icons.ac_unit),
                        trailing: Icon(Icons.arrow_forward),
                      ),
                    ),
                    Text("Yo"),
                  ],
                ),
              ),
              const ListTileDemo(title: 'Comic ListTile'),
              const SizedBox(height: 24),
              const ComicBottomSheetDemo(),
              const SizedBox(height: 24),
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
              const SizedBox(height: 24),
              TextButton(
                onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: const Text('This is Comic SnackBar'),
                    action: SnackBarAction(
                      onPressed: () {},
                      label: 'Action',
                    ),
                  ),
                ),
                child: const Text('Display Snackbar'),
              ),
            ],
          ),
        ),
        const Center(child: Text('Second')),
        const Center(
          child: Column(
            children: [
              Text('Third'),
            ],
          ),
        ),
      ],
    );
  }
}

class ComicBottomSheetDemo extends StatelessWidget {
  const ComicBottomSheetDemo({
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
