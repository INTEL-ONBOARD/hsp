import 'package:flutter/material.dart';
import '../widgets/page_title.dart';
import 'user_page.dart';
import 'settings_page.dart';
import '../widgets/custom_navigation_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final PageController _pageController = PageController();

  final List<Widget> _pages = [
    const Center(child: Text('Home Page', style: TextStyle(fontSize: 24))),
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
      appBar: AppBar(
        title: PageTitle(title: _titles[_currentIndex]),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              // Placeholder for future functionality
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Notifications clicked!')),
              );
            },
          ),
        ],
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            _pageController.animateToPage(
              index,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'User',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
