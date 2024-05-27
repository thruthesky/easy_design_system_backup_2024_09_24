import 'package:example/screens/color_scheme_new/color_scheme_new.screen.dart';
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
import 'package:example/screens/demo/comic/comic.theme.screen.dart';
import 'package:example/screens/demo/sleek.theme.screen.dart';
import 'package:example/screens/divider/divider.screen.dart';
import 'package:example/screens/dropdown/dropdown.screen.dart';
import 'package:example/screens/floating_action_button/floating_action_button.screen.dart';
import 'package:example/screens/icon_buttons/icon_buttons.screen.dart';
import 'package:example/screens/list_tile/list_tile.screen.dart';
import 'package:example/screens/entry/basic_carousel_entry.screen.dart';
import 'package:example/screens/entry/round_carousel_entry.screen.dart';
import 'package:example/screens/entry/wave_carousel_entry.screen.dart';
import 'package:example/screens/login/login.screen.dart';
import 'package:example/screens/navigation_drawer/navigation_drawer.screen.dart';
import 'package:example/screens/navigation_bar/navigation_bar.screen.dart';
import 'package:example/screens/navigation_rail.dart/navigation_rail.screen.dart';
import 'package:example/screens/progress_indicator/progress_indicator.screen.dart';
import 'package:example/screens/search/search.screen.dart';
import 'package:example/screens/segmented_button/segmented_button.dart';
import 'package:example/screens/sleep_walker/sleep_walker.screen.dart';
import 'package:example/screens/snackbar/snackbars.screen.dart';
import 'package:example/screens/tab_bar/tab_bar.screen.dart';
import 'package:example/screens/text_field/text_field.screen.dart';
import 'package:example/screens/text_form_field/text_form_field.screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:markdown_widget/widget/all.dart';

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
      home: const MyHomePage(title: 'Social Design System Demo Home Page'),
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
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      if (const String.fromEnvironment('MODE') == 'noe') {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => const LoginScreen()));
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
          const MarkdownBlock(data: '''
# Social Design System

- Social design system is an Elegant UI/UX library crafted specifically for building social like applications. This is an open source project that you can fork and make PR.
- Developers must NOT do anything, must NOT learn anything, must NOT refer any document to use the social design system. It will just work. Just continue the way how you work.

## Terms
- `Basic widgets` means the widgets in material.dart.
- `Visual component widget` is a widget that have a visual outloook on screen like a Text widget. While GestureDetector is not a visual component since it does not appear on the screen.
'''),
          const SizedBox(height: 16),
          const Text("Demos:"),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: pushScreen(
                  'Comic Theme',
                  const ComicScreenDemo(),
                ),
              ),
              Flexible(
                child: pushScreen(
                  'Sleek Theme',
                  const SleekScreenDemo(),
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          if (const String.fromEnvironment('MODE') == 'noe') ...{
            pushScreen('Search Widget', const SearchScreen()),
          },
          pushScreen("AppBar", const AppBarScreen()),
          pushScreen('Badge', const BadgeScreen()),
          pushScreen('BottomAppBar', const BottomAppBarScreen()),
          pushScreen('BottomSheet', const BottomSheetScreen()),
          pushScreen('Buttons', const ButtonsScreen()),
          pushScreen('Card', const CardScreen()),
          pushScreen('Checkbox', const CheckboxScreen()),
          pushScreen('Dropdown', const DropdownScreen()),
          // pushScreen('CheckboxListTile', const CheckboxListTileScreen()),
          pushScreen('Chip', const ChipScreen()),
          pushScreen('Dialog', const DialogScreen()),
          pushScreen('Divider', const DividerScreen()),
          pushScreen(
              'Floating Action Button', const FloatingActionButtonScreen()),
          pushScreen('IconButton', const IconButtonScreen()),
          pushScreen('ListTile', const ListTileScreen()),
          pushScreen('Login Screen', const LoginScreen()),
          pushScreen('NavigationBar', const NavigationBarScreen()),
          pushScreen("NavigationDrawer", const NavigationDrawerScreen()),
          // pushScreen('NavigationRail', const NavigationRailScreen()),
          pushScreen('Progress Indicator', const ProgressIndicatorScreen()),
          pushScreen('Segmented Button', const SegmentedButtonScreen()),
          pushScreen('SnackBar', const SnackBarScreen()),
          pushScreen('TabBar', const TabBarScreen()),
          pushScreen('TextFields', const TextFieldScreen()),
          pushScreen('TextFormField', const TextFormFieldScreen()),
          const Divider(),
          pushScreen('Basic Carousel Entry', const BasicCarouselEntryScreen()),
          pushScreen('Wave Carousel Entry', const WaveCarouselEntryScreen()),
          pushScreen('Round Carousel Entry', const RoundCarouselEntryScreen()),
          pushScreen('Sleep Walker', const SleepWalkerScreen()),
          // pushScreen('Color scheme', const ColorSchemeScreen()),

          pushScreen('Color scheme new', const ColorSchemeNewScreen()),
        ],
      ),
    );
  }

  Widget pushScreen(String title, Widget screen) {
    return ElevatedButton(
      onPressed: () => Navigator.of(context).push(
        MaterialPageRoute(builder: (_) => screen),
      ),
      child: Text(title),
    );
  }
}

class WidgetItem {
  final String id;
  final String name;
  final String description;
  final Widget screen;

  WidgetItem({
    required this.id,
    required this.name,
    required this.description,
    required this.screen,
  });
}
