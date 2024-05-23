import 'package:flutter/material.dart';
import 'package:social_design_system/social_design_system.dart';

class ComicNavigationDrawerScreen extends StatelessWidget {
  static const String routeName = '/comic_navigation_drawe';
  const ComicNavigationDrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // this to prevent the default sliding behaviour
        drawerEnableOpenDragGesture: false,
        drawer: Theme(
          data: ComicTheme.of(context),
          child: const NavigationDrawer(
            children: [
              Center(
                child: Text("Drawer"),
              )
            ],
          ),
        ),
        appBar: AppBar(
          leading: const BackButton(),
          title: const Text("Comic Naviagtion Drawer"),
        ),
        endDrawer: Theme(
          data: ComicTheme.of(context),
          child: const NavigationDrawer(
            children: [
              Center(
                child: Text("End Drawer"),
              )
            ],
          ),
        ),
        body: Center(
          child: Builder(builder: (context) {
            return Column(
              children: [
                ElevatedButton(
                  child: const Text('Open Drawer'),
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
