import 'package:example/screens/navigation_rail.dart/comic.navigation_rail.screen.dart';
import 'package:flutter/material.dart';

class NavigationRailScreen extends StatelessWidget {
  static const String routeName = '/Navigation_rail';
  const NavigationRailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Navigation Rail'),
        ),
        body: Column(
          children: [
            ElevatedButton(
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => const ComicNavigationRialScreen())),
                child: const Text('Comic Navigation Rial'))
          ],
        ));
  }
}
