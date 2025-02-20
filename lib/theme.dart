import 'package:flutter/material.dart';

class AppTheme{
  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.amber,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.amber,
      foregroundColor: Colors.white
    ),
    // floatingActionButtonTheme: FloatingActionButtonThemeData(
    //   backgroundColor: Colors.amber,  // Light mode
    //   foregroundColor: Colors.white,
    // ),

  );

  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.amber,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.amber,
      foregroundColor: Colors.black,
    ),
    // floatingActionButtonTheme: FloatingActionButtonThemeData(
    //   backgroundColor: Colors.amber,  // Light mode
    //   foregroundColor: Colors.white,
    // ),
  );

}