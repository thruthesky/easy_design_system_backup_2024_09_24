# Social Design System

Social design system is an Elegant and easy-to-use UI/UX design library for Flutter, crafted to enhance your app's aesthetics and user experience without learning anything. This is an open source project that you can fork and pr.

And again, there is nothing to learn. Just install the package and apply the theme to MaterialApp.

## Getting started

Please visit the [Social Design System document website](https://thruthesky.github.io/social_design_system/) to learn more.

## Demos

Here are some demo of using Social Design System (SDS).

| Comic Theme   | Sleek Theme                                                |
| --- | --- 
| ![DemoScreen](./docs/images/demo.comic.home.screen.png) |  ![DemoScreen](./docs/images/demo.sleek.home.screen.png) |
| ![DemoScreen](./docs/images/demo.comic.login.screen.png)| ![DemoScreen](./docs/images/demo.sleek.login.screen.png)|



WaveCarouseEntry ![WaveCarouseEntry](./docs/images/wave_carousel_entry.png)                 
BasicCarouseEntry ![BasicCarouseEntry](./docs/images/basic_carousel_entry.png) 
RoundCarouseEntry ![RoundCarouseEntry](./docs/images/round_carousel_entry.png)|

## Usage

Social Design System follows the principle of the Flutter programming style. You can just continue with Flutter coding without knowing how to apply the UI design.

For instance, SDS provides `ComicTheme` and you use it like below;

```dart
Theme(
    data: ComicTheme.of(context),
    child: const ListTile(
    title: Text('Item 1'),
    subtitle: Text('Subtitle 1'),
    leading: Icon(Icons.access_time),
    trailing: Icon(Icons.arrow_forward_ios),
    ),
),
```

As you know this is really the way how the Flutter goes.

You may use `ComicTheme` widget for short like below;

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

For more details, please visit the [Social Design System document website](https://thruthesky.github.io/social_design_system/)

## Things to learn

### Comic theme

- Comic theme uses
  - outline with outline color.

### Sleek theme

- Sleek theme uses
  - background color with primaryContainer.


## Contribution

- Fork and PR.
- Leave your issues on the git repo.

## Coding Guideline

- Write a good example and description on the example app since we don't provide other documents.

- In each screen, have;
    - Title as the name of widget/compoennt,
    - Widget of the UI on first of the body
    - And short description
    - And sample code

