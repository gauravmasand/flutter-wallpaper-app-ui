import 'package:flutter/material.dart';

class AmazingTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.amberAccent,
    cardColor: Colors.white70,
    canvasColor: Colors.white,
    buttonColor: Colors.black,
    backgroundColor: Colors.white,
    accentColor: Colors.amber,
    textSelectionColor: Colors.black,
    appBarTheme: AppBarTheme(
      color: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black),
      textTheme: Theme.of(context).textTheme,
    ),
  );
  static ThemeData darkTheme(BuildContext context) => ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.black38,
    cardColor: Colors.black38,
    canvasColor: Colors.black,
    buttonColor: Colors.amber,
    backgroundColor: Colors.black,
    accentColor: Colors.amber,
    textSelectionColor: Colors.white,
    appBarTheme: AppBarTheme(
      color: Colors.black,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.amber),
      textTheme: Theme.of(context).textTheme,
    ),
  );
}




