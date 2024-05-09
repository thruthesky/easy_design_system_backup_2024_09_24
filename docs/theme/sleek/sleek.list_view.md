# SleekListView

`SleekListView` is a list view with sleek style theme. It provides `SleekListView`, `SleekListView.builder()`, `SleekListView.separated()`.

The `SleekListView` supports full ListView widget with the sleek style ui design.

![Sleek List View](../../images/sleek.list_view.jpg)

```dart
SleekListView(
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

`SleekListView.builder()` support the most of `ListView.builder()` properties with opinionated sleek style ui design.

![SleekListView.builder](../../images/sleek.list_view.builder.jpg)

```dart
SleekListView.builder(
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

`SleekListView.separated` supports the most of `ListView.separated` properties except that you cannot customize the `separatedBuilder` since it is opinionated for sleek ui design.

![SleekListView.separated](../../images/sleek.list_view.separated.jpg)

```dart
SleekListView.separated(
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
