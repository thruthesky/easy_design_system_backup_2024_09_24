# Input

Sleek has theme for TextField and TextFormField

## Text Field

![Sleek Text Field](../../images/sleek.text_field.jpg)

To apply, apply the following code:

```dart
Theme(
    data: SleekThemeData.of(context),
    child: const TextField(
        decoration: InputDecoration(
            labelText: 'Sleek',
        ),
    ),
),
```

```dart
Theme(
    data: SleekThemeData.of(context),
    child: TextFormField(
        decoration: const InputDecoration(
            labelText: 'Sleek',
        ),
    ),
),
```
