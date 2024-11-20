import 'package:flutter/material.dart';
import '../widgets/page_title.dart';
import 'user_page.dart';
import 'settings_page.dart';
import '../widgets/custom_navigation_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    Center(child: Text('Home Page')),
    UserPage(),
    SettingsPage(),
  ];

  final List<String> _titles = [
    'Home',
    'User',
    'Settings',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: PageTitle(title: _titles[_currentIndex])),
      body: _pages[_currentIndex],
      bottomNavigationBar: CustomNavigationBar( // Use the updated name
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
