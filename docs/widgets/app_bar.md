# App Bar

Comic App Bar:
![Comic App Bar](../images/comic.app_bar.jpg)

For Comic App Bar, the `outline` color from colorScheme is used.

## How to apply

In a scaffold, the appBar property needs a PreferredSizeWidget. Therefore, we can not simply apply theme directly to the AppBar. The theme should be applied to the scaffold.

```dart
Theme(
    data: ComicTheme.of(context),
        child: Scaffold(
        appBar: AppBar(
            title: const Text("AppBar"),
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    const Text("Not much changed in Sleek Theme"),
                ],  
            ),
        ),
    ),
)
```
