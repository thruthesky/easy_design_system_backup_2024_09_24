# Social Design System

Social Design System(sds) is an Elegant UI/UX library crafted specifically for building social like applications. This is an open source project that you can fork and make PR.

## Features

- Design systems for Flutter app development
- UI widgets

## Getting started

Please visit the [Social Design System document website](https://thruthesky.github.io/social_design_system/) to learn more.


## Usage


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

For more details, please visit the [Social Design System document website](https://thruthesky.github.io/social_design_system/)

## Contribution

- Fork and PR.
- Leave your issues on the git repo.


