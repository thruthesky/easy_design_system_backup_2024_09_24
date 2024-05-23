import 'package:flutter/material.dart';
import 'package:social_design_system/social_design_system.dart';

class SleekNavigationDrawerScreen extends StatelessWidget {
  static const String routeName = '/sleek_navigation_drawer_screen';
  const SleekNavigationDrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // this to prevent the default sliding behaviour
        drawerEnableOpenDragGesture: false,
        drawer: Theme(
          data: SleekTheme.of(context),
          child: const NavigationDrawer(
            children: [],
          ),
        ),
        appBar: AppBar(
          leading: const BackButton(),
          title: const Text("Sleek Naviagtion Drawer"),
        ),
        endDrawer: Theme(
          data: SleekTheme.of(context),
          child: const NavigationDrawer(
            children: [
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
              )
            ],
          ),
        ),
        body: Center(
          child: Builder(builder: (context) {
            return Column(
              children: [
                ElevatedButton(
                  child: const Text('Open Drawer '),
                  onPressed: () => Scaffold.of(context).openDrawer(),
                ),
                ElevatedButton(
                  child: const Text('Open End Drawer '),
                  onPressed: () => Scaffold.of(context).openEndDrawer(),
                ),
              ],
            );
          }),
        ));
  }
}
