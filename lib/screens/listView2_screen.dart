// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final options = const ['Thor', 'Iron Man', 'Hulk', 'Ant Man', 'Spider Man'];
  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('listview Tipo 2'),
          elevation: 0,
          backgroundColor: Colors.deepPurple,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  title: Text(options[index]),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.deepPurple,
                  ),
                  onTap: () {
                    final hero = options[index];
                    print(hero);
                  },
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: options.length));
  }
}
