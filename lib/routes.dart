import 'package:flutter/material.dart';
import 'pages/finish_page.dart';
import 'pages/main_page.dart';
import 'pages/next_page.dart';
import 'pages/register_page.dart';

class RouteManager {
  static const String homePage = '/';
  static const String nextPage = '/nextPage';
  static const String registerPage = '/registerPage';
  static const String finishPage = '/finishPage';

  static Route<dynamic> generateRoute(RouteSettings settings) {

    switch (settings.name) {
      case homePage:
        return MaterialPageRoute(
          builder: (context) => const MainPage(),
        );
      case nextPage:
        return MaterialPageRoute(
          builder: (context) => const NextPage(),
        );
      case registerPage:
        return MaterialPageRoute(
          builder: (context) => const RegisterPage(),
        );
      case finishPage:
        return MaterialPageRoute(
          builder: (context) => FinishPage(email: "Enter Email Address"),
        );

      default:
        throw const FormatException('Route not found. Check route again.');
    }
  }
}