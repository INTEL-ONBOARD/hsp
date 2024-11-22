import 'package:flutter/material.dart';
import 'pages/intro_page.dart';
import 'pages/login_page.dart';
import 'pages/register_page.dart';
import 'pages/home_page.dart'; // HomePage from home_page.dart
import 'pages/airconditions_page.dart'; // AirConditionsHomePage from airconditions_page.dart
import 'pages/home_cleaning-page.dart';
import 'pages/painting.page.dart';
import 'pages/plumbing_page.dart';

class AppRoutes {
  static const String intro = '/intro';
  static const String login = '/login';
  static const String register = '/register';
  static const String home = '/home';
  static const String airConditions = '/airconditions';
  static const String homeCleaning = '/home-cleaning';
  static const String painting = '/painting';
  static const String plumbing = '/plumbing';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case intro:
        return MaterialPageRoute(builder: (_) => const IntroPage());
      case login:
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case register:
        return MaterialPageRoute(builder: (_) => const RegisterPage());
      case home:
        return MaterialPageRoute(builder: (_) => const HomePage()); // HomePage is fine here
      case airConditions:
        return MaterialPageRoute(builder: (_) => const AirConditionsHomePage()); // Updated to AirConditionsHomePage
      case homeCleaning:
        return MaterialPageRoute(builder: (_) => const HomeCleaningPage());
      case painting:
        return MaterialPageRoute(builder: (_) => const PaintingPage());
      case plumbing:
        return MaterialPageRoute(builder: (_) => const PlumbingPage());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
