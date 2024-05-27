import 'package:flutter/material.dart';
import 'package:social_design_system/social_design_system.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({
    super.key,
    required TabController tabController,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: _tabController,
      children: [
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 28),
                Text(
                  "Welcome to Comic Theme Demonstration Page. This is the Dashboad. Explore the Comic Theme to check out the different Widgets.",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                // const Card(child: Text('Card has a border already')),
                const SizedBox(height: 24),
                Text(
                  "Weather Forecast",
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                const SizedBox(height: 8),
                Card(
                  child: Column(
                    children: [
                      const ListTileTheme(
                        child: ListTile(
                          title: Text('32 °C | 89 °F (A bit rainy)'),
                          subtitle:
                              Text('Monday\nLight thunderstorms and rain'),
                          leading: Icon(Icons.cloud),
                        ),
                      ),
                      Column(
                        children: [
                          const Divider(
                            indent: 16,
                            endIndent: 16,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 16.0, right: 16.0, bottom: 12.0, top: 8),
                            child: Text(
                              "Today. Not a real data: Maximum daytime temperature: 32 degrees Celsius; Minimum nighttime temperature: 28 degrees Celsius.",
                              style: Theme.of(context).textTheme.bodySmall,
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                Text(
                  "Are you happy today?",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(height: 8),
                ElevatedButton.icon(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: const Text(
                          'Congratulations! There is one less sad person in the world!',
                        ),
                        action: SnackBarAction(
                          onPressed: () {
                            ScaffoldMessenger.of(context).hideCurrentSnackBar();
                          },
                          label: 'Dismiss',
                        ),
                      ),
                    );
                  },
                  label: const Text('Tap/Click if YES!'),
                  icon: const Icon(Icons.emoji_emotions_outlined),
                ),
                const SizedBox(height: 16),
                const Divider(),
                const SizedBox(height: 16),
                // const ListTileDemo(),
                ListTile(
                  leading: const Icon(Icons.palette),
                  title: const Text("Comic ListTile"),
                  subtitle: const Text('Tap to learn more about comic theme.'),
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) => Theme(
                        data: ComicTheme.of(context),
                        child: BottomSheet(
                          onClosing: () {},
                          builder: (context) => const SizedBox(
                            height: 200,
                            child: Padding(
                              padding: EdgeInsets.all(24.0),
                              child: Column(
                                children: [
                                  Text(
                                    'Comic Theme is a theme that is inspired by comic books. The main idea is about thick borders with no background coloring. However, as a developer, you may choose how you want to color your app.',
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
                const SizedBox(height: 24),
                const ComicBottomSheetDemo(),
                const SizedBox(height: 24),
              ],
            ),
          ),
        ),
        const Center(child: Text('Second')),
        const Center(
          child: Column(
            children: [
              Text('Third'),
            ],
          ),
        ),
      ],
    );
  }
}

class ComicBottomSheetDemo extends StatelessWidget {
  const ComicBottomSheetDemo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () => showBottomSheet(
        context: context,
        builder: (context) => Theme(
          data: ComicTheme.of(context),
          child: BottomSheet(
            onClosing: () {},
            builder: (context) {
              return SizedBox(
                height: 250,
                width: double.maxFinite,
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text(
                        "There is no secret to success except hard work and getting something indefinable which we call 'the breaks.' In order for a writer to succeed, I suggest three things - read and write - and wait.",
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "- Countee Cullen",
                          style:
                              Theme.of(context).textTheme.bodySmall?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                          textAlign: TextAlign.end,
                        ),
                      ),
                      const SizedBox(height: 12),
                      OutlinedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text("Thank You!"),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
      child: const Text(
        'Want to learn a secret?',
      ),
    );
  }
}
