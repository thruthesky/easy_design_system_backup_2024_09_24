# Buttons

- Comic theme does not add thick border on `TextButton(TextButton.icon)` and `IconButton` because Text Button is meant to be without border. You may use `OutlinedButton`.
    - `IconButton` is used as in `BackButton` of the `AppBar` and it looks urgly when it has a border. Instead, it support `ComicIconButtonThemeData` to make it look as comic design.
    - You may use `ComicTextButtonThemeData` to make the look of `TextButton` as comic design.

Example of `ComicTextButtonThemeData`

<!-- 
TODO: We don't actually need to make a separate theming for Text Button because we already have `OutlinedButton`. To be confirmed.
-->

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

<!-- Or, access `ComicTextButtonThemeData` and `ComicIconButtonThemeData` from `ComicTheme`.

For Icon Button:

```dart
Theme(
  data: ComicTheme.iconButton.of(context),
  child: IconButton(
    onPressed: () {
      debugPrint('Pressed');
    },
    icon: const Icon(Icons.favorite),
  ),
),
```

For Text Button:

```dart
Theme(
  data: ComicTheme.textButton.of(context),
  child: TextButton(
    onPressed: () {
      debugPrint('Pressed');
    },
    icon: const Icon(Icons.favorite),
  ),
),
``` -->
