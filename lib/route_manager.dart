import 'package:flutter/material.dart';
import 'home_page.dart';
import 'second_page.dart';

class RouteManager {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return PageRouteBuilder(
          pageBuilder:
              (context, animation, secondaryAnimation) => const HomeActivity(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return child; // কোনো ট্রানজিশন ইফেক্ট নেই
          },
          transitionDuration: Duration.zero,
        );
      case '/second':
        return PageRouteBuilder(
          pageBuilder:
              (context, animation, secondaryAnimation) =>
                  const SecondActivity(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return child; // কোনো ট্রানজিশন ইফেক্ট নেই
          },
          transitionDuration: Duration.zero, // ট্রানজিশনের সময় শূন্য
        );
      default:
        return MaterialPageRoute(builder: (context) => const HomeActivity());
    }
  }
}
