import 'package:flutter/material.dart';

ThemeData lightTheme() {
  return ThemeData(
    primaryColor: Colors.white,
    accentColor: Colors.purpleAccent,
    primarySwatch: Colors.purple,
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    cardColor: Colors.white,
    appBarTheme: AppBarTheme(
      color: Colors.white
    ),
    splashColor: Colors.purple,
  );
}

ThemeData darkTheme() {
  return ThemeData(
    primaryColor: Colors.black,
    accentColor: Colors.deepPurpleAccent,
    primarySwatch: Colors.deepPurple,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    cardColor: Colors.black12,
    appBarTheme: AppBarTheme(
      color: Colors.black
    ),
    splashColor: Colors.deepPurple,
  );
}