// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  final options = const ['Thor', 'Iron Man', 'Hulk', 'Ant Man', 'Spider Man'];
  const Listview1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('listview Tipo 1'),
        ),
        body: ListView(
          children: [
            ...options
                .map((heroe) => ListTile(
                      title: Text(heroe),
                      trailing: const Icon(Icons.arrow_forward_ios),
                    ))
                .toList()
          ],
        ));
  }
}
