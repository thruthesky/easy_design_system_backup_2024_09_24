# Card 

- Sleek theme does not give elevation and border for the `Card` widget
- By default, the Card widget has elevation. With the Sleek theme, the elevation is removed, and additionally, the border is also removed.
- Sleek theme does not give theme design for the `Card` widget variant `Card.outline()`, since the Sleek design should be a smooth and clean design



![Sleek Card](../../images/Sleek.card.jpg)

### Card Widget
```dart
Theme(
    data: SleekTheme.of(context),
    child: const Card(
        child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
            'Card Sleek Theme'),
        ),
    ),
),
```

- Using the `Card.filled` variant widget may differ from using the `Card` widget because, by default, they use different colors. The `Card` widget uses `surfaceContainerLow` with lighter tone , while the `Card.filled` variant widget uses `surfaceContainerHigh` with darker tone.

### Card.outline
```dart
 Theme(
    data: SleekTheme.of(context),
    child: const Card.filled(
        child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
            'Card Filled Sleek Theme'),
        ),
    ),
),
```

