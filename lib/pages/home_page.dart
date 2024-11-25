import 'package:flutter/material.dart';
import 'package:hsp/widgets/custom_navigation_bar.dart'; // Import the custom navigation bar
import 'airconditions_page.dart';
import 'home_cleaning-page.dart';
import 'painting.page.dart';
import 'plumbing_page.dart';
import 'settings_page.dart'; // Import settings page
import 'new_booking_page.dart';  // Import booking page
import 'marketplace_page.dart';  // Import booking page
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  // List of pages corresponding to the bottom navigation items
  final List<Widget> _pages = [
    const MarketPlacePage(),  // Market Place Page
    const BookingPage(),      // Booking Page
    const SettingsPage(),     // Settings Page
  ];

  // Function to set AppBar title dynamically based on the current index
  String _getAppBarTitle() {
    switch (_currentIndex) {
      case 1:
        return 'Booking';
      case 2:
        return 'Settings';
      default:
        return 'Market Place';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 120,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(
                _getAppBarTitle(),
                style: const TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 22,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Image.asset(
                'lib/assets/notification-bell.png',
                width: 24,
                height: 24,
              ),
            ),
          ],
        ),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: Divider(
            color: Color.fromRGBO(233, 233, 233, 1),
            thickness: 1,
          ),
        ),
      ),
      body: _pages[_currentIndex],  // Load the corresponding page
      bottomNavigationBar: CustomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}




