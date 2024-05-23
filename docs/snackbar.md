# Applying theme on SnackBar

SDS can not directly apply the `Theme` with the `SnackBar` unlike other widgets. `Scaffold` needs to wrap with the `Theme` widget to apply the themes successfully.

#### Displaying Snackbar


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


#### Applying theme on snackbar

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