# ComicListView

`ComicListView` is a list view with comic style theme. It provides `ComicListView`, `ComicListView.builder()`, `ComicListView.separated()`.

The `ComicListView` supports full ListView widget with the comic style ui design.

![Comic List View](../../images/comic_list_view.jpg)

```dart
ComicListView(
  shrinkWrap: true,
  physics: const NeverScrollableScrollPhysics(),
  padding: EdgeInsets.zero,
  children: List.generate(
    5,
    (index) => ListTile(
      title: Text('Item $index'),
      subtitle: Text('Subtitle $index'),
      leading: const Icon(Icons.ac_unit),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {},
    ),
  ),
),
```

`ComicListView.builder()` support the most of `ListView.builder()` properties with opinionated comic style ui design.

![ComicListView.builder](../../images/comic_list_view_builder.jpg)

```dart
ComicListView.builder(
  padding: EdgeInsets.zero,
  shrinkWrap: true,
  physics: const NeverScrollableScrollPhysics(),
  itemCount: 5,
  itemBuilder: (context, index) => ListTile(
    title: Text('Item $index'),
    subtitle: Text('Subtitle $index'),
    leading: const Icon(Icons.ac_unit),
    trailing: const Icon(Icons.arrow_forward_ios),
    onTap: () {},
  ),
),
```

`ComicListView.separated` supports the most of `ListView.separated` properties except that you cannot customize the `separatedBuilder` since it is opinionated for comic ui design.

![ComicListView.separated](../../images/comic_list_view_separated.jpg)

```dart
ComicListView.separated(
  padding: EdgeInsets.zero,
  shrinkWrap: true,
  itemCount: 5,
  itemBuilder: (context, index) => ListTile(
    title: Text('Item $index'),
    subtitle: Text('Subtitle $index'),
    leading: const Icon(Icons.ac_unit),
    trailing: const Icon(Icons.arrow_forward_ios),
    onTap: () {},
  ),
),
```
