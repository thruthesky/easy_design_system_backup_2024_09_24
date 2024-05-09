# SleekElevatedButton

`SleekElevatedButton` is an ElevatedButton with sleek design.

![Sleek Elevated Button](./images/sleek.elevated_button.jpg)

To add the Elevated button:

```dart
SleekTheme(
    child: SleekElevatedButton(
        onPressed: () {},
        child: const Text('Button'),
    ),
),
```

## SleekElevatedButton.icon

Sleek ElevatedButton also supports Elevated Button with Icon.

![Sleek Elevated Button with Icon](./images/sleek.elevated_button.icon.jpg)

To add the Elevated button with Icon:

```dart
SleekTheme(
    child: SleekElevatedButton.icon(
        onPressed: () {},
        icon: const Icon(Icons.add),
        label: const Text('Button'),
    ),
),
```
