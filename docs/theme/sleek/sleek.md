# Sleek theme

Sleek theme is a theme with smooth, plain, clean, straight-forward style.

![Sleek List Tile](./images/sleek_list_view_separated.jpg)

## How to apply

You can use `SleekTheme` widget like below.

```dart
const SleekTheme(
    child: ListTile(
        title: Text('Item 2'),
        subtitle: Text('Subtitle 2'),
        leading: Icon(Icons.access_alarm),
        trailing: Icon(Icons.arrow_forward_ios),
    ),
),
```

Or you can use `Theme` widget with `ComicThemeData`.

```dart
Theme(
    data: SleekThemeData.of(context),
    child: const ListTile(
        title: Text('Item 3'),
        subtitle: Text('Subtitle 3'),
        leading: Icon(Icons.access_time),
        trailing: Icon(Icons.arrow_forward_ios),
    ),
),
```
