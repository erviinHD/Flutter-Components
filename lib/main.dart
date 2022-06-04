//import 'package:fl_components/screens/listView1_screen.dart';

import 'package:flutter/material.dart';

import 'screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      //home: const CardScreen(),
      initialRoute: 'home',
      routes: {
        'home': (BuildContext context) => const HomeScreen(),
        'listview': (BuildContext context) => const Listview2Screen(),
        'alerts': (BuildContext context) => const AlertScreen(),
        'cards': (BuildContext context) => const CardScreen()
      },
    );
  }
}
