import 'package:flutter/material.dart';
import 'package:social_design_system/social_design_system.dart';

class NavigationBarScreen extends StatefulWidget {
  const NavigationBarScreen({super.key});

  @override
  NavigationBarScreenState createState() => NavigationBarScreenState();
}

class NavigationBarScreenState extends State<NavigationBarScreen> {
  int currentPageIndex = 0;

  ThemeData? currentTheme;

  @override
  Widget build(BuildContext context) {
    currentTheme ??= Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigation Bar"),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              child: const Text("Comic Theme"),
              onPressed: () {
                setState(() {
                  currentTheme = ComicTheme.of(context);
                });
              },
            ),
            TextButton(
              child: const Text("Sleek Theme"),
              onPressed: () {
                setState(() {
                  currentTheme = SleekTheme.of(context);
                });
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: Theme(
        data: currentTheme!,
        child: NavigationBar(
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          // indicatorColor: Colors.amber,
          selectedIndex: currentPageIndex,
          destinations: const <Widget>[
            NavigationDestination(
              // selectedIcon: Icon(Icons.home),
              // icon: Icon(Icons.home_outlined),
              // selectedIcon: Icon(Icons.home),
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Badge(child: Icon(Icons.notifications_sharp)),
              label: 'Notifications',
            ),
            NavigationDestination(
              icon: Badge(
                label: Text('2'),
                child: Icon(Icons.messenger_sharp),
              ),
              label: 'Messages',
            ),
          ],
        ),
      ),
    );
  }
}
