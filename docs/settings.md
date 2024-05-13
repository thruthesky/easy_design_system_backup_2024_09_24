# Settings

This widget displays a settings UI like below.

![Settings](./images/settings.jpg)

As you see below, you can freely customize the children widgets.

```dart
Settings(label: 'Settings', children: [
  ListTile(
    visualDensity: VisualDensity.compact,
    title: const Text('Notifications'),
    subtitle: const Text('Receive notifications'),
    leading: const Icon(Icons.notifications_outlined),
    trailing: const Icon(Icons.chevron_right_rounded),
    onTap: () => debugPrint('Item 1'),
  ),
  ListTile(
    visualDensity: VisualDensity.compact,
    title: const Text('Favorites'),
    subtitle: const Text('Want to know who likes you?'),
    leading: const Icon(Icons.favorite_border_outlined),
    trailing: const Icon(
      Icons.arrow_right_rounded,
      size: 32,
    ),
    onTap: () => debugPrint('Item 2'),
  ),
  ListTile(
    title: const Text('Privacy Policy'),
    leading: const Icon(Icons.shield_outlined),
    trailing: const Icon(Icons.arrow_circle_right_outlined),
    onTap: () => debugPrint('Item 3'),
  ),
]),
```


