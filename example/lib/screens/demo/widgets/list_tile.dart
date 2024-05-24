import 'package:flutter/material.dart';

class ListTileDemo extends StatelessWidget {
  const ListTileDemo({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: ListTile(
        leading: const Icon(Icons.palette),
        title: Text(title),
        subtitle: const Text(
            'Comic Theme is a theme that is inspired by comic books.'),
        onTap: () {
          Navigator.pushNamed(context, '/comic-theme');
        },
        trailing: const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
