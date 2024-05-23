import 'package:flutter/material.dart';
import 'package:social_design_system/social_design_system.dart';

class BottomAppBarScreen extends StatelessWidget {
  const BottomAppBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BottomAppBarScreen"),
      ),
      body: Column(
        children: [
          TextButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Theme(
                    data: ComicTheme.of(context),
                    child: Scaffold(
                      appBar: AppBar(
                        title: const Text("Comic Bottom App Bar"),
                      ),
                      body: const Center(
                        child: Text("Comic Bottom App Bar"),
                      ),
                      floatingActionButton: FloatingActionButton(
                        onPressed: () {},
                        child: const Icon(Icons.add),
                      ),
                      bottomNavigationBar: BottomAppBar(
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.home),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.search),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.favorite),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.person),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
            child: const Text("View Comic Bottom App Bar"),
          ),
          const SizedBox(
            height: 24,
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Theme(
                    data: SleekTheme.of(context),
                    child: Scaffold(
                      appBar: AppBar(
                        title: const Text("Sleek Bottom App Bar"),
                      ),
                      body: const Center(
                        child: Text("Sleek Bottom App Bar"),
                      ),
                      floatingActionButton: FloatingActionButton(
                        onPressed: () {},
                        child: const Icon(Icons.add),
                      ),
                      floatingActionButtonLocation:
                          FloatingActionButtonLocation.centerDocked,
                      bottomNavigationBar: BottomAppBar(
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.home),
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.search),
                            ),
                            const Spacer(flex: 6),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.favorite),
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.person),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
            child: const Text("View Sleek Bottom App Bar"),
          ),
        ],
      ),
    );
  }
}
