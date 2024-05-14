# Overview

Social Design System (SDS) is an Elegant UI/UX library crafted specifically for building social like applications. This is an open source project that you can fork and make PR.

## TODO

## Sample UI of Social Deisgn System

<!-- prettier-ignore -->
|      |           |         |
| -------------------------- | --------------------- | --------------------------- |
| ComicListView![ComicListView](./images/comic_list_view.jpg) | ComicListView.builder ![ComicListView.builder](./images/comic_list_view_builder.jpg) | ComicListView.separated ![ComicListView.separated](./images/comic_list_view_separated.jpg) |
|WaveCarouseEntry ![WaveCarouseEntry](./images/wave_carousel_entry.gif)|BasicCarouseEntry ![BasicCarouseEntry](./images/basic_carousel_entry.gif)|RoundCarouseEntry ![RoundCarouseEntry](./images/round_carousel_entry.gif)|
| Buttons ![Buttons](./images/buttons.jpg) |Settings ![Settings](./images/settings.jpg) | x |

## Themes

SDS provides the following themes:

- Sleek
- Comic

## Philosophy of SDS

- We design with flutter theme as much as possible. This means, developers are not needed to learn anything about the SDS. They can continue working with their code and Social Design System will naturally update the look.

- How to apply SDS to your button?

Applying `ComicTheme` to your button.

```dart
Theme(
    data: ComicThemeData.of(context),
    child: TextButton('Hello, World!'),
)
```

or you can apply the `ComicTheme` to all of your buttons in the app.

```dart
Theme(
    data: ComicThemeData.of(context),
    child: MaterialApp( ... )
)
```

then, all the buttons will use `ComicTheme`.

The theme (for instance `ComicTheme`) provides UI design to most of the flutter widgets that have visibility and if it works alone without a subset. For instance, button widget work a lone while list view widget work with a child widget. So, the theme does not provide and UI for the list view widget. Instead, it provides a special widget named `ComicListView`.

- There are some cases we cannot acheive good UI with theming, like designing the list view and list tile together. In this caase we provide speial widgets like `ComicListView` or `SleekListView`.

- Developers can choose their color scheme and all the widgets will follow the chosen color.

## Common patterns of SDS

- SDS does not provides theme design directly to `IconButton` because it is used as `BackButton` in `AppBar` and we cannot make a clean design with it. Flutter allows to custom UI design only for icons not for icon button for this time.
    - So, SDS provides `[Theme]IconButton` like `ComicIconbutton` or `SleekIconButton`.
