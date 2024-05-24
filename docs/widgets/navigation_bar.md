# Navigation Bar

<!-- Note: Navigation Bar uses Material 3 Design -->

Comic design also gives navigation bar a style. However, currently, there is no top outline in the theming for Navigation Bar. By default there will be no top outline. To add an outline NavigationBar must be a child of a Container with a BoxDecoration that has Border at top (it will be shown in example code below).

Comic Navigation Bar:
![Comic Navigation Bar](../../images/comic.navigation_bar1.jpg)

Sleek design has the solid coloring for its background. SDS (Social Design System) used different color for navigation bar to look consistent.

These are the colors used by the theme:

- backgroundColor: `primaryContainer`,
- indicatorColor: `onPrimary`
- icon's color when selected: `primary`,
- icon's color when unselected: `onPrimaryContainer`
- label's color when selected: `primary`
- label's color when unselected: `onPrimaryContainer`

Sleek Navigation Bar:
![Sleek Navigation Bar](../../images/sleek.navigation_bar.jpg)

## How to apply

Check this example code, simply the usual way to apply theme in Flutter.

```dart
Theme(
    data: ComicTheme.of(context),
    child: Scaffold(
    // ... body
    bottomNavigationBar: NavigationBarTheme(
        data: ComicTheme.of(context).navigationBarTheme,
            child: NavigationBar(
                selectedIndex: index,
                onDestinationSelected: (v) {
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
)
```

<!-- TODO need consulation - for confirmation -->

For Comic Theme, To add the outline above the navigation bar. Check this example code. (This will be up to the developer).

![Comic Navigation Bar](../../images/comic.navigation_bar.jpg)

```dart
Theme(
    data: ComicTheme.of(context),
    child: Scaffold(
    // ... body
    bottomNavigationBar: NavigationBarTheme(
        data: ComicTheme.of(context).navigationBarTheme,
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
                    setState(() {
                        index = v;
                    });
                },
                destinations: 
                    [
                        const NavigationDestination(
                            icon: Icon(Icons.car_rental),
                            label: '실버스',
                        ),
                        const NavigationDestination(
                            icon: Icon(Icons.person),
                            label: '모임',
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
)
```
