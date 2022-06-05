import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.purpleAccent;
  static const Color warning = Colors.amber;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      //Promary Color
      primaryColor: Colors.deepPurple,
      appBarTheme: const AppBarTheme(color: primary, elevation: 0));

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      //Promary Color
      primaryColor: Colors.amber,
      appBarTheme: const AppBarTheme(color: warning, elevation: 0),
      scaffoldBackgroundColor: Colors.black);
}
