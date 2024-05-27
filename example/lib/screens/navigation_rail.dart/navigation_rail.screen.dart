import 'package:flutter/material.dart';
import 'package:social_design_system/social_design_system.dart';

class NavigationRailScreen extends StatefulWidget {
  static const String routeName = '/Navigation_rail';
  const NavigationRailScreen({super.key});

  @override
  State<NavigationRailScreen> createState() => _NavigationRailScreenState();
}

class _NavigationRailScreenState extends State<NavigationRailScreen> {
  int selectedIndex = 0;

  String selectedTheme = 'Comic';

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: selectedTheme == 'Comic'
          ? ComicTheme.of(context)
          : SleekTheme.of(context),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
              '${selectedTheme == 'Comic' ? 'Comic' : 'Sleek'} Navigation Rail'),
        ),
        body: Row(
          children: [
            NavigationRail(
              onDestinationSelected: _onItemTapped,
              destinations: const [
                NavigationRailDestination(
                  icon: Icon(Icons.home),
                  label: Text('Home'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.message),
                  label: Text('Chat'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.person),
                  label: Text('Profile'),
                ),
              ],
              selectedIndex: selectedIndex,
            ),
            if (selectedTheme == "Comic")
              const VerticalDivider(
                width: 0,
              ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Theme(
                    data: ComicTheme.of(context),
                    child: ElevatedButton(
                      onPressed: () => setState(() => selectedTheme = 'Comic'),
                      child: const Text('Comic Theme'),
                    ),
                  ),
                  Theme(
                    data: SleekTheme.of(context),
                    child: ElevatedButton(
                      onPressed: () => setState(() => selectedTheme = 'Sleek'),
                      child: const Text('Sleek Theme'),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
