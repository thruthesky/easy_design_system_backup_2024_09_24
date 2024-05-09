import 'package:example/buttons.dart';
import 'package:example/screens/entry/basic_carousel_entry.screen.dart';
import 'package:example/screens/entry/round_carousel_entry.screen.dart';
import 'package:example/screens/entry/wave_carousel_entry.screen.dart';
import 'package:example/screens/sleep_walker/sleep_walker.screen.dart';
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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    showGeneralDialog(
                      context: context,
                      pageBuilder: (_, __, ___) => Scaffold(
                        appBar: AppBar(
                          title: const Text('Buttons'),
                        ),
                        body: const Buttons(),
                      ),
                    );
                  },
                  child: const Text('BUTTON'),
                ),
                const Divider(
                  height: 48,
                ),
                const Buttons(),
                const Divider(
                  height: 48,
                ),
                ElevatedButton(
                  onPressed: () => Navigator.of(context).push(
                    PageRouteBuilder(
                        pageBuilder: (_, __, ___) =>
                            const WaveCarouselEntryScreen()),
                  ),
                  child: const Text('Wave Carousel Entry Screen'),
                ),
                ElevatedButton(
                  onPressed: () => Navigator.of(context).push(
                    PageRouteBuilder(
                        pageBuilder: (_, __, ___) =>
                            const BasicCarouselEntryScreen()),
                  ),
                  child: const Text('Basic Carousel Entry Screen'),
                ),
                ElevatedButton(
                  onPressed: () => Navigator.of(context).push(
                    PageRouteBuilder(
                        pageBuilder: (_, __, ___) =>
                            const RoundCarouselEntryScreen()),
                  ),
                  child: const Text('Round Carousel Entry Screen'),
                ),
                ElevatedButton(
                  onPressed: () => Navigator.of(context).push(
                    PageRouteBuilder(
                        pageBuilder: (_, __, ___) => const SleepWalkerScreen()),
                  ),
                  child: const Text('Sleep Walker'),
                ),
                const Divider(),
                Theme(
                  data: SleekThemeData.of(context),
                  child: SleekListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.zero,
                    children: List.generate(
                      5,
                      (index) => ListTile(
                        title: Text('Item $index'),
                        subtitle: Text('Subtitle $index'),
                        leading: const Icon(Icons.ac_unit),
                        trailing: const Icon(Icons.arrow_forward_ios),
                        onTap: () {},
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                SleekTheme(
                  child: SleekListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 5,
                    itemBuilder: (context, index) => ListTile(
                      title: Text('Item $index'),
                      subtitle: Text('Subtitle $index'),
                      leading: const Icon(Icons.ac_unit),
                      trailing: const Icon(Icons.arrow_forward_ios),
                      onTap: () {},
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                SleekTheme(
                  child: SleekListView.separated(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 5,
                    itemBuilder: (context, index) => ListTile(
                      title: Text('Item $index'),
                      subtitle: Text('Subtitle $index'),
                      leading: const Icon(Icons.ac_unit),
                      trailing: const Icon(Icons.arrow_forward_ios),
                      onTap: () {},
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                const SizedBox(height: 24),
                ComicListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.zero,
                  children: List.generate(
                    5,
                    (index) => ListTile(
                      title: Text('Item $index'),
                      subtitle: Text('Subtitle $index'),
                      leading: const Icon(Icons.ac_unit),
                      trailing: const Icon(Icons.arrow_forward_ios),
                      onTap: () {},
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                ComicListView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: (context, index) => ListTile(
                    title: Text('Item $index'),
                    subtitle: Text('Subtitle $index'),
                    leading: const Icon(Icons.ac_unit),
                    trailing: const Icon(Icons.arrow_forward_ios),
                    onTap: () {},
                  ),
                ),
                const SizedBox(height: 24),
                ComicListView.separated(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: (context, index) => ListTile(
                    title: Text('Item $index'),
                    subtitle: Text('Subtitle $index'),
                    leading: const Icon(Icons.ac_unit),
                    trailing: const Icon(Icons.arrow_forward_ios),
                    onTap: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
