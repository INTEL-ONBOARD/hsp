import 'package:flutter/material.dart';
import 'pages/intro_page.dart';
import 'pages/login_page.dart';
import 'pages/register_page.dart';
import 'pages/home_page.dart';
import 'pages/airconditions_page.dart';
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
        return MaterialPageRoute(builder: (_) => IntroPage());
      case login:
        return MaterialPageRoute(builder: (_) => LoginPage());
      case register:
        return MaterialPageRoute(builder: (_) => RegisterPage());
      case home:
        return MaterialPageRoute(builder: (_) => HomePage());
      case airConditions:
        return MaterialPageRoute(builder: (_) => AirConditionsPage());
      case homeCleaning:
        return MaterialPageRoute(builder: (_) => HomeCleaningPage());
      case painting:
        return MaterialPageRoute(builder: (_) => PaintingPage());
      case plumbing:
        return MaterialPageRoute(builder: (_) => PlumbingPage());
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
