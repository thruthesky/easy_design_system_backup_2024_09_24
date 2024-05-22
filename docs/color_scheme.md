# Color Scheme

Using Social Design System's theming does not touch, set, or modify the colors (most of the time). It will use the current color scheme based on the context.

This code will use the color scheme based on the context:

```dart
Theme(
    data: ComicTheme.of(context),
    child: TextButton(
        child: Text("test"),
        onPressed: (){},
    )
);
```

## Setting the Color Scheme

To set the color scheme, must use `copyWith` to modify the colorScheme.

```dart
Theme(
    data: ComicTheme.of(context).copyWith(
                      colorScheme: const ColorScheme(
                        brightness: Brightness.light,
                        primary: Colors.blue,
                        onPrimary: Colors.orange,
                        secondary: Colors.pink,
                        onSecondary: Colors.red,
                        error: Colors.purple,
                        onError: Colors.black,
                        background: Colors.yellow,
                        onBackground: Colors.indigo,
                        surface: Colors.teal,
                        onSurface: Colors.lime,
                    ),
                ),
    child: TextButton(
        child: Text("test"),
        onPressed: (){},
    )
)
```

Or, practically, to prevent repeating setting the colorscheme, we set it on the outermost scaffold like:

```dart
Theme(
    data: ComicTheme.of(context).copyWith(
                      colorScheme: const ColorScheme(
                        brightness: Brightness.light,
                        primary: Colors.blue,
                        onPrimary: Colors.orange,
                        secondary: Colors.pink,
                        onSecondary: Colors.red,
                        error: Colors.purple,
                        onError: Colors.black,
                        background: Colors.yellow,
                        onBackground: Colors.indigo,
                        surface: Colors.teal,
                        onSurface: Colors.lime,
                    ),
                ),
    child: Scaffold(
        body: TextButton(
            child: Text("test"),
            onPressed: (){},
        ),
    )
)
```
