import 'package:flutter/material.dart';
import 'package:social_design_system/social_design_system.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const ListTile(
                title: Text('Item 1'),
                subtitle: Text('Subtitle 1'),
                leading: Icon(Icons.ac_unit),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              const ComicTheme(
                child: ListTile(
                  title: Text('Item 2'),
                  subtitle: Text('Subtitle 2'),
                  leading: Icon(Icons.access_alarm),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Theme(
                data: ComicThemeData.of(context),
                child: const ListTile(
                  title: Text('Item 3'),
                  subtitle: Text('Subtitle 3'),
                  leading: Icon(Icons.access_time),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
