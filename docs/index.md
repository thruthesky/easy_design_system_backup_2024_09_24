# Overview

Social Design System (SDS) is an Elegant UI/UX library crafted specifically for building social like applications. This is an open source project that you can fork and make PR.

## Terms

- `Basic widgets` means the widgets in [material.dart](https://github.com/flutter/flutter/blob/master/packages/flutter/lib/material.dart).
- `widget of visual component` is a widget that appears on the screen. For instance `TextButton` is a visual component since it appears on the screen while `GestureDetector` is not a visual component since it does not appear on the screen.

## TODO

## Sample UI of Social Deisgn System

| Comic Theme    | Sleek Theme          | Social Theme        |
| -------------------------- | --------------------- | --------------------------- |
| ComicListView![ComicListView](https://thruthesky.github.io/social_design_system/images/comic_list_view.jpg) | | x |
| ComicListView.builder ![ComicListView.builder](https://thruthesky.github.io/social_design_system/images/comic_list_view_builder.jpg) | | x |
| ComicListView.separated ![ComicListView.separated](https://thruthesky.github.io/social_design_system/images/comic_list_view_separated.jpg) | | x |
| Buttons ![Buttons](https://thruthesky.github.io/social_design_system/images/buttons.jpg) |  | x |
| Settings ![Settings](https://thruthesky.github.io/social_design_system/images/settings.jpg) |  | x |
| TextField ![TextField Comic Theme](https://thruthesky.github.io/social_design_system/images/comic.text_field.jpg) | | x |
| IconButton ![IconButton Comic Theme](https://thruthesky.github.io/social_design_system/images/comic.icon_button.jpg) | IconButton ![IconButton Comic Theme](https://thruthesky.github.io/social_design_system/images/sleek.icon_button.jpg) | x |
|WaveCarouseEntry ![WaveCarouseEntry](https://thruthesky.github.io/social_design_system/images/wave_carousel_entry.gif)|BasicCarouseEntry ![BasicCarouseEntry](https://thruthesky.github.io/social_design_system/images/basic_carousel_entry.gif)|RoundCarouseEntry ![RoundCarouseEntry](https://thruthesky.github.io/social_design_system/images/round_carousel_entry.gif)|

comic.icon_button.jpg

## Themes

SDS provides the following themes:

- Sleek
- Comic

## Philosophy of Social Design System

- Social design system desings the basic widgets by theme customization. This means, you don't need to learn anything. Just write your code and the design of your app will be updated.

- How to apply the social design system to your button?

Applying `ComicTheme` to your button.

```dart
Theme(
    data: ComicTheme.of(context),
    child: TextButton('Hello, World!'),
)
```

or you can apply the `ComicTheme` to all over your app like below.

```dart
Theme(
    data: ComicTheme.of(context),
    child: MaterialApp( ... )
)
```

then, not only the buttons but all the widgets will use `ComicTheme`.

Social design system provides UI design to the basic widgets with visual component and it also provides its own custom widget for non-visual component like `ComicListView`.

- You can apply your own custom color scheme just as the way how flutter goes. And the social design system will honor it while applying its design system.

## Common patterns of SDS

- Social design system follows the theme system of the Flutter. This means, you can apply your own theme just the way you used to.

- There are exceptions that some of the basic widgets change its look.
    - For instance, `ElevatedButton` has a shadow. But the shadow is removed with comic theme. And this is because the button in comic theme should look like a commic style. So the shadow is removed.

- Comic theme does not add thick border on `TextButton(TextButton.icon)` and `IconButton` because Text Button is meant to be without border. You may use `OutlinedButton`.
