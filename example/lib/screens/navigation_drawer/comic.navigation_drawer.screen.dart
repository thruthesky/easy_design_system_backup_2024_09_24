import 'package:flutter/material.dart';
import 'package:social_design_system/social_design_system.dart';

class ComicNavigationDrawerScreen extends StatefulWidget {
  static const String routeName = '/comic_navigation_drawer';
  const ComicNavigationDrawerScreen({super.key});

  @override
  State<ComicNavigationDrawerScreen> createState() =>
      _ComicNavigationDrawerScreenState();
}

class _ComicNavigationDrawerScreenState
    extends State<ComicNavigationDrawerScreen> {
  int _selectedDestination = 0;

  void selectDestination(int index) {
    setState(() {
      _selectedDestination = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // This prevents the default sliding behavior
      drawerEnableOpenDragGesture: false,
      drawer: Theme(
        data: ComicTheme.of(context),
        child: NavigationDrawer(
          onDestinationSelected: selectDestination,
          selectedIndex: _selectedDestination,
          children: const [
            SafeArea(
              child: Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text("Drawer"),
                ),
              ),
            ),
            NavigationDrawerDestination(
                icon: Icon(Icons.home), label: Text('Home')),
            NavigationDrawerDestination(
                icon: Icon(Icons.message), label: Text('Chat')),
            NavigationDrawerDestination(
                icon: Icon(Icons.person), label: Text('Profile'))
          ],
        ),
      ),
      appBar: AppBar(
        leading: const BackButton(),
        title: const Text("Comic Navigation Drawer"),
      ),
      endDrawer: Theme(
        data: ComicTheme.of(context),
        child: NavigationDrawer(
          onDestinationSelected: selectDestination,
          selectedIndex: _selectedDestination,
          children: const [
            SafeArea(
              child: Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text("End Drawer"),
                ),
              ),
            ),
            NavigationDrawerDestination(
                icon: Icon(Icons.home), label: Text('Home')),
            NavigationDrawerDestination(
                icon: Icon(Icons.message), label: Text('Chat')),
            NavigationDrawerDestination(
                icon: Icon(Icons.person), label: Text('Profile'))
          ],
        ),
      ),
      body: Center(
        child: Builder(
          builder: (context) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: const Text('Open Drawer'),
                  onPressed: () => Scaffold.of(context).openDrawer(),
                ),
                ElevatedButton(
                  child: const Text('Open End Drawer'),
                  onPressed: () => Scaffold.of(context).openEndDrawer(),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
