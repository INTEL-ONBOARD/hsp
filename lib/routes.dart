import 'package:flutter/material.dart';
import 'pages/intro_page.dart';
import 'pages/login_page.dart';
import 'pages/register_page.dart';
import 'pages/home_page.dart';
import 'pages/airconditions_page.dart';
import 'pages/home_cleaning-page.dart'; // Corrected import name
import 'pages/painting.page.dart'; // Corrected import name
import 'pages/plumbing_page.dart'; // Corrected import name
import 'pages/settings_ok_page.dart'; // Corrected import name
import 'pages/settings_fail_page.dart';
import 'pages/manage_orders_page.dart'; // Added
import 'pages/view_services_page.dart'; // Added
import 'pages/manage_services_page.dart'; // Added


class AppRoutes {
  // Existing routes
  static const String intro = '/intro';
  static const String login = '/login';
  static const String register = '/register';
  static const String home = '/home';
  static const String airConditions = '/airconditions';
  static const String homeCleaning = '/home-cleaning';
  static const String painting = '/painting';
  static const String plumbing = '/plumbing';
  static const String settingsOk = '/settings-ok';
  static const String settingsFailed = '/settings-failed'; //added later

  // New routes
  static const String manageOrders = '/manage-orders';
  static const String viewServices = '/view-services';
  static const String manageServices = '/manage-services';
  static const String report = '/report';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // Existing cases
      case intro:
        return MaterialPageRoute(builder: (_) => const IntroPage());
      case login:
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case register:
        return MaterialPageRoute(builder: (_) => const RegisterPage());
      case home:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case airConditions:
        return MaterialPageRoute(builder: (_) => const AirConditionsHomePage());
      case homeCleaning:
        return MaterialPageRoute(builder: (_) => const HomeCleaningPage());
      case painting:
        return MaterialPageRoute(builder: (_) => const PaintingPage());
      case plumbing:
        return MaterialPageRoute(builder: (_) => const PlumbingPage());
      case settingsOk:
        return MaterialPageRoute(builder: (_) => const SettingsOkPage());
      case settingsFailed:
        return MaterialPageRoute(builder: (_) => const SettingsFailedPage());

      // New cases
      case manageOrders:
        return MaterialPageRoute(builder: (_) => const ManageOrdersPage());
      case viewServices:
        return MaterialPageRoute(builder: (_) => const ViewServicesPage());
      case manageServices:
        return MaterialPageRoute(builder: (_) => const ManageServicesPage());
      

      // Default case
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
