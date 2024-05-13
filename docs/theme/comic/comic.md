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


## Buttons

- Comic theme does not add thick border on `TextButton(TextButton.icon)` and `IconButton` because Text Button is meant to be without border. You may use `OutlinedButton`.
    - `IconButton` is used as in `BackButton` of the `AppBar` and it looks urgly when it has a border. Instead, it support `ComicIconButtonThemeData` to make it look as comic design.
    - You may use `ComicTextButtonThemeData` to make the look of `TextButton` as comic design.


Example of `ComicTextButtonThemeData`

```dart
Theme(
  data: ComicTextButtonThemeData.of(context),
  child: TextButton.icon(
    onPressed: () {
      debugPrint('Pressed');
    },
    icon: const Icon(Icons.add),
    label: const Text('This is Lebel'),
  ),
),
```


Example of `ComicIconButtonThemeData`

```dart
Theme(
  data: ComicIconButtonThemeData.of(context),
  child: IconButton(
    onPressed: () {
      debugPrint('Pressed');
    },
    icon: const Icon(Icons.favorite),
  ),
),
```