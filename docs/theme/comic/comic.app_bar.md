# App Bar

Comic Theme provides a theme for App Bar

![Comic App Bar](../../images/comic.app_bar.jpg)

## How to apply

```dart
Theme(
    data: ComicThemeData.of(context),
    child: Scaffold(
        appBar: AppBar(
            title: const Text('Comic Screen Demo'),
        ),
        // ... body
    ),
);
```
