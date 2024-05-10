import 'package:flutter/material.dart';
import 'package:social_design_system/social_design_system.dart';

class ComicScreenDemo extends StatefulWidget {
  const ComicScreenDemo({super.key});

  @override
  State<ComicScreenDemo> createState() => _ComicScreenDemoState();
}

class _ComicScreenDemoState extends State<ComicScreenDemo>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  int index = 0;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(
      length: 3,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ComicThemeData.of(context),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Comic Screen Demo'),
          bottom: TabBar(
            controller: _tabController,
            tabs: const [
              Tab(text: '추천 모임'),
              Tab(text: '전체 모임'),
              Tab(text: '내 모임'),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: const [
            Center(child: Text('추천 모임')),
            Center(child: Text('전체 모임')),
            Center(child: Text('내 모임')),
          ],
        ),
        bottomNavigationBar: NavigationBarTheme(
          // data: NavigationBarThemeData(
          //   labelTextStyle: MaterialStateProperty.resolveWith((states) {
          //     if (states.contains(MaterialState.selected)) {
          //       return TextStyle(
          //         fontSize: 13,
          //         fontWeight: FontWeight.w600,
          //         color: Theme.of(context).colorScheme.primary,
          //       );
          //     }
          //     return TextStyle(
          //       fontSize: 13,
          //       fontWeight: FontWeight.w300,
          //       color: Theme.of(context).colorScheme.secondary,
          //     );
          //   }),
          //   labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
          // ),
          data: ComicThemeData.of(context).navigationBarTheme,
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Theme.of(context).colorScheme.onBackground,
                  width: 1.6,
                ),
              ),
            ),
            child: NavigationBar(
              selectedIndex: index,
              onDestinationSelected: (v) {
                // context.routerState.change(v);
                setState(() {
                  index = v;
                });
              },
              destinations: [
                const NavigationDestination(
                  icon: Icon(Icons.car_rental),
                  label: '실버스',
                ),
                const NavigationDestination(
                  icon: Icon(Icons.person),
                  label: '모임',
                ),
                NavigationDestination(
                  icon: SizedBox(
                    width: 48,
                    height: 32,
                    child: Stack(
                      children: [
                        const Align(
                          alignment: Alignment.center,
                          child: Icon(Icons.chat_bubble_outline),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(16, 0, 0, 12),
                            child: Container(
                              width: 16,
                              height: 16,
                              decoration: BoxDecoration(
                                color: Colors.orange.shade900,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Center(
                                child: Text(
                                  '5',
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelSmall!
                                      .copyWith(
                                        fontSize: 10,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  label: '채팅',
                ),
                const NavigationDestination(
                  icon: Icon(Icons.post_add),
                  label: '게시판',
                ),
                const NavigationDestination(
                  icon: Icon(Icons.menu),
                  label: '메뉴',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
