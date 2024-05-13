# IconButton


- SDS does not provides theme design directly to `IconButton` because it is used as `BackButton` in `AppBar` and we cannot make a clean design with it. Flutter allows to custom UI design only for icons not for icon button for this time.
    - So, SDS provides `[Theme]IconButton` like `ComicIconbutton` or `SleekIconButton`.



```dart
ComicIconButton(
    icon: const Icon(Icons.search),
    onPressed: () {},
),
```