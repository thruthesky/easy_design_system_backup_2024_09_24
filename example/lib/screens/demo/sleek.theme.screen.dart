import 'package:example/screens/demo/widgets/list_tile.dart';
import 'package:flutter/material.dart';
import 'package:social_design_system/social_design_system.dart';

class SleekScreenDemo extends StatefulWidget {
  const SleekScreenDemo({super.key});

  @override
  State<SleekScreenDemo> createState() => _ComicScreenDemoState();
}

class _ComicScreenDemoState extends State<SleekScreenDemo>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  int index = 0;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(
      length: 3,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: SleekTheme.of(context),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Sleek Theme'),
          bottom: TabBar(
            controller: _tabController,
            tabs: const [
              Tab(text: 'First'),
              Tab(text: 'Theme'),
              Tab(text: 'Color Scheme'),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            Center(
              child: Column(
                children: [
                  const ListTileDemo(title: 'Sleek ListTile'),
                  const SleekBottomSheetDemo(),
                  const SizedBox(height: 24),
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
        ),
        bottomNavigationBar: NavigationBarTheme(
          data: SleekTheme.of(context).navigationBarTheme,
          child: NavigationBar(
            selectedIndex: index,
            onDestinationSelected: (v) {
              setState(() {
                index = v;
              });
            },
            destinations: [
              const NavigationDestination(
                icon: Icon(Icons.car_rental),
                label: 'Car',
              ),
              const NavigationDestination(
                icon: Icon(Icons.person),
                label: 'You',
              ),
              NavigationDestination(
                icon: SizedBox(
                  width: 48,
                  height: 32,
                  child: Stack(
                    children: [
                      const Align(
                        alignment: Alignment.center,
                        child: Icon(Icons.chat_bubble_outline),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 0, 14),
                          child: Badge(
                            label: Text(
                              '5',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelSmall!
                                  .copyWith(
                                    fontSize: 10,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                label: 'Chat',
              ),
              const NavigationDestination(
                icon: Icon(Icons.post_add),
                label: 'Record',
              ),
              const NavigationDestination(
                icon: Icon(Icons.menu),
                label: 'Menu',
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

class SleekBottomSheetDemo extends StatelessWidget {
  const SleekBottomSheetDemo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showBottomSheet(
        context: context,
        builder: (context) => Theme(
          data: SleekTheme.of(context),
          child: BottomSheet(
            onClosing: () {},
            builder: (context) => SizedBox(
              height: 200,
              child: Center(
                child: TextButton(
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
