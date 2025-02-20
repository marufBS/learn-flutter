import 'package:flutter/material.dart';
import 'package:app1/theme.dart';
import 'package:app1/home_page.dart';
import 'package:app1/second_page.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeActivity(),
        '/second': (context) => const SecondActivity(),
      },
    );
  }
}

