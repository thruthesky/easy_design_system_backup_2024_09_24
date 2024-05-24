# SnackBar

SDS can not directly apply the `Theme` with the `SnackBar` unlike other widgets. It needs to wrap the `Scaffold` with the `Theme` widget to apply the themes successfully.

## Displaying Snackbar

```dart
ElevatedButton(
    onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
                content: const Text('This is Comic SnackBar'),
                action: SnackBarAction(
                  onPressed: () {},
                  label: 'Action',
                ),
            ),
        ),
    child: const Text('Display Comic SnackBar'),
),
```

In flutter, this is the common way to display a snackbar. It needs to call the `showSnackBar()` from `ScaffoldMessenger` where it use the default color of `SnackBar` and being dependent on `Scaffold`. The code below is an example on how to work around with `SnackBar`.

## Applying theme on snackbar

To apply, for example, the `Comic Theme`, we can wrap the `Scaffold` widget with the `Theme` and provide the `ComicThemeData`.

```dart
@override
  Widget build(BuildContext context) {
    return Theme(
      data: ComicTheme.of(context),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Comic SnackBar'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: const Text('This is Comic SnackBar'),
                action: SnackBarAction(
                  onPressed: () {},
                  label: 'Action',
                ),
              ),
            ),
            child: const Text('Display Comic SnackBar'),
          ),
        ),
      ),
    );
  }
```
## Snackbar Behaviors
SDS lets you customize the widgets however you want. Here are some example of how you can customize your own snackbar.

### Snackbar Properties
Changing the snackbar behaviors depends on your needs.

***SnackBarBehavior.fixed*** lets the `SnackBar` into its default position and sizes.

![Fixed Comic SnackBar](https://thruthesky.github.io/social_design_system/images/fixed.comic.snackbar.jpg)

```dart
SnackBar(
  content: const Text('This is Comic SnackBar'),
  behavior: SnackBarBehavior.fixed,
  action: SnackBarAction(
      onPressed: () {},
      label: 'Action',
  ),
),
```
***SnackBarBehavior.floating*** makes the `SnackBar` have a floating effect.


![floating Comic SnackBar](https://thruthesky.github.io/social_design_system/images/floating.comic.snackbar.jpg)

```dart
SnackBar(
  content: const Text('This is Comic SnackBar'),
  behavior: SnackBarBehavior.floating,
  margin: const EdgeInsets.fromLTRB(40, 0, 40, 32),
  action: SnackBarAction(
    onPressed: () {},
    label: 'Action',
  ),
),
```