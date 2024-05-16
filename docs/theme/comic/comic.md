# Comic Theme

Comic style theme design.

Comic theme should have

- thick border
- rounded border
- no shadow

## Common Patterns

- `ElevatedButton` has a shadow. But the shadow is removed with comic theme. And this is because the button in comic theme should look like a commic style. So the shadow is removed.

## How to apply

You can use `ComicTheme` widget like below.

```dart
const ComicTheme(
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
    data: ComicThemeData.of(context),
    child: const ListTile(
        title: Text('Item 3'),
        subtitle: Text('Subtitle 3'),
        leading: Icon(Icons.access_time),
        trailing: Icon(Icons.arrow_forward_ios),
        ),
),
```
