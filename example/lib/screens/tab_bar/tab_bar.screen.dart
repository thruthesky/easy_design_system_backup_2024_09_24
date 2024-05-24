import 'package:flutter/material.dart';
import 'package:social_design_system/social_design_system.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({super.key});

  @override
  TabBarScreenState createState() => TabBarScreenState();
}

class TabBarScreenState extends State<TabBarScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  ThemeData? _themeData;
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
    _themeData ??= Theme.of(context);

    return Theme(
      data: _themeData!,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TabBarScreen'),
          bottom: TabBar(
            controller: _tabController,
            tabs: const [
              Tab(text: 'Widgets'),
              Tab(text: 'Theme'),
              Tab(text: 'Color Scheme'),
            ],
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextButton(
              onPressed: () {
                setState(() {
                  _themeData = ComicTheme.of(context);
                });
              },
              child: const Text("Comic Theme"),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _themeData = SleekTheme.of(context);
                });
              },
              child: const Text("Sleek Theme"),
            )
          ],
        ),
      ),
    );
  }
}
