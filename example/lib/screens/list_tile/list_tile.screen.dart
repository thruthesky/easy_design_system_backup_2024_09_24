import 'package:flutter/material.dart';
import 'package:social_design_system/social_design_system.dart';

class ListTileScreen extends StatefulWidget {
  static const String routeName = '/ListTile';
  const ListTileScreen({super.key});

  @override
  State<ListTileScreen> createState() => _ListTileScreenState();
}

class _ListTileScreenState extends State<ListTileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListTile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Theme(
          data: ComicThemeData.of(context),
          child: const Column(
            children: [
              Text('Comic Theme'),
              ListTile(
                title: Text('ListTile'),
                subtitle: Text('Subtitle'),
                leading: Icon(Icons.ac_unit),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              Text('Comic Theme'),
              ListTile(
                title: Text('ListTile'),
                subtitle: Text('Subtitle'),
                leading: Icon(Icons.ac_unit),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              Text('Comic Theme'),
              ListTile(
                title: Text('ListTile'),
                subtitle: Text('Subtitle'),
                leading: Icon(Icons.ac_unit),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
