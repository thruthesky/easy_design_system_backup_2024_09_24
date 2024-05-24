import 'package:example/screens/navigation_drawer/comic.navigation_drawer.screen.dart';
import 'package:example/screens/navigation_drawer/sleek.navigation_drawer.screen.dart';
import 'package:flutter/material.dart';

class NavigationDrawerScreen extends StatelessWidget {
  static const String routeName = '/navigation_drawer';
  const NavigationDrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const BackButton(),
          title: const Text("Naviagtion Drawer"),
        ),
        body: Center(
          child: Builder(builder: (context) {
            return Column(
              children: [
                ElevatedButton(
                  child: const Text('Comic Navigation Drawer'),
                  onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const ComicNavigationDrawerScreen(),
                    ),
                  ),
                ),
                ElevatedButton(
                  child: const Text('Sleek Navigation Drawer '),
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => const SleekNavigationDrawerScreen(),
                  )),
                ),
              ],
            );
          }),
        ));
  }
}
