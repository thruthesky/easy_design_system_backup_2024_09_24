import 'package:example/screens/dialog/dialog.screen.dart';
import 'package:example/screens/app_bar/app_bar.screen.dart';
import 'package:example/screens/badge/badge.screen.dart';
import 'package:example/screens/bottom_app_bar/bottom_app_bar.screen.dart';
import 'package:example/screens/bottom_sheet/bottom_sheet.screen.dart';
import 'package:example/screens/buttons/buttons.screen.dart';
import 'package:example/screens/card/card.screen.dart';
import 'package:example/screens/checkbox/checkbox.screen.dart';
import 'package:example/screens/checkbox_list_tile/checkbox_list_tile.screen.dart';
import 'package:example/screens/chip/chip.screen.dart';
import 'package:example/screens/color_scheme/color_scheme.screen.dart';
import 'package:example/screens/demo/comic.screen.demo.dart';
import 'package:example/screens/demo/sleek.screen.demo.dart';
import 'package:example/screens/divider/divider.screen.dart';
import 'package:example/screens/floating_action_button/floating_action_button.screen.dart';
import 'package:example/screens/icon_buttons/icon_buttons.screen.dart';
import 'package:example/screens/list_tile/list_tile.screen.dart';
import 'package:example/screens/entry/basic_carousel_entry.screen.dart';
import 'package:example/screens/entry/round_carousel_entry.screen.dart';
import 'package:example/screens/entry/wave_carousel_entry.screen.dart';
import 'package:example/screens/navigation_drawer/navigation_drawer.screen.dart';
import 'package:example/screens/navigation_bar/navigation_bar.screen.dart';
import 'package:example/screens/progress_indicator/progress_indicator.screen.dart';
import 'package:example/screens/segmented_button/segmented_button.dart';
import 'package:example/screens/sleep_walker/sleep_walker.screen.dart';
import 'package:example/screens/snackbar/snackbars.screen.dart';
import 'package:example/screens/tab_bar/tab_bar.screen.dart';
import 'package:example/screens/text_field/text_field.screen.dart';
import 'package:example/screens/text_form_field/text_form_field.screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.dark,
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
  void initState() {
    // TODO: implement initState
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      if (const String.fromEnvironment('MODE') == 'noe') {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (_) => const NavigationDrawerScreen()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: <Widget>[
          Row(
            children: [
              pushScreen('Comic Theme Demo', const ComicScreenDemo()),
              pushScreen('Sleek Theme Demo', const SleekScreenDemo()),
            ],
          ),
          pushScreen('TextFields', const TextFieldScreen()),
          pushScreen('Buttons', const ButtonsScreen()),
          //

          pushScreen('TextFormFieldScreen', const TextFormFieldScreen()),
          pushScreen(
              'Floating Action Button', const FloatingActionButtonScreen()),
          pushScreen('IconButton', const IconButtonScreen()),
          pushScreen('Segmented Button', const SegmentedButtonScreen()),
          pushScreen('Badge', const BadgeScreen()),
          pushScreen('Progress Indicator', const ProgressIndicatorScreen()),
          pushScreen('SnackBar', const SnackBarScreen()),
          pushScreen('Dialog', const DialogScreen()),
          pushScreen('BottomSheet', const BottomSheetScreen()),
          pushScreen('Card', const CardScreen()),
          pushScreen('Divider', const DividerScreen()),
          pushScreen('ListTile', const ListTileScreen()),
          // ElevatedButton(onPressed: () {}, child: const Text("AppBar")),
          pushScreen("AppBar", const AppBarScreen()),
          pushScreen('BottomAppBar', const BottomAppBarScreen()),
          // ElevatedButton(onPressed: () {}, child: const Text("NavigationBar")),
          pushScreen('NavigationBar', const NavigationBarScreen()),
          pushScreen("NavigationDrawer", const NavigationDrawerScreen()),
          ElevatedButton(onPressed: () {}, child: const Text("NavigationRail")),
          // ElevatedButton(onPressed: () {}, child: const Text("TabBar")),
          pushScreen('TabBar', const TabBarScreen()),
          pushScreen('Checkbox', const CheckboxScreen()),
          pushScreen('CheckboxListTile', const CheckboxListTileScreen()),

          ElevatedButton(onPressed: () {}, child: const Text("Chip")),
          // ElevatedButton(onPressed: () {}, child: const Text("Chip")),

          pushScreen('Chip', const ChipScreen()),

          pushScreen('Sleep Walker', const SleepWalkerScreen()),
          pushScreen('Basic Carousel Entry', const BasicCarouselEntryScreen()),
          pushScreen('Wave Carousel Entry', const WaveCarouselEntryScreen()),
          pushScreen('Round Carousel Entry', const RoundCarouselEntryScreen()),
          pushScreen('Color scheme', const ColorSchemeScreen()),
        ],
      ),
    );
  }

  pushScreen(String title, Widget screen) {
    return ElevatedButton(
      onPressed: () => Navigator.of(context).push(
        MaterialPageRoute(builder: (_) => screen),
      ),
      child: Text(title),
    );
  }
}
