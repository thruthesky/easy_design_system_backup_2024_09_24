# ComicListView


`ComicListView` is a list view with comic style theme. There are two types of list view. One is `ComicListView` and the other is `ComicListView.separated`. It does not support `CommicListView.builder`.



It is `ComistListView`. It supports complete list view properties.

![Comic List View](./images/comic_list_view.jpg)


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


`ComicListView.separated` supports the whole `ListView.separated` properties.

![ComicListView.separated](./images/comic_list_view_separated.jpg)


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