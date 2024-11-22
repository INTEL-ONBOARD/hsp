import 'package:flutter/material.dart';
import 'airconditions_page.dart';
import 'home_cleaning-page.dart';
import 'painting.page.dart';
import 'plumbing_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const MarketPlacePage(),
    const BookingPage(),
    const SettingsPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Market Place'),
              Image.asset('lib/assets/notification-bell.png', width: 24, height: 24,),
            ]
          ),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            selectedLabelStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,),
            unselectedLabelStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.bold,),
            selectedItemColor: Colors.white, // Text color for the selected item
            unselectedItemColor: Colors.white70, // Text color for unselected items
          ),
        ),
        child: SizedBox(
          height: 100, // Custom height for the BottomNavigationBar
          child: BottomNavigationBar(
            currentIndex: _currentIndex,
            backgroundColor: const Color.fromRGBO(94, 105, 207, 1),
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },

            items: [
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 4.0), // Adds margin between icon and label
                  child: Image.asset(
                    'lib/assets/market-place.png',
                    width: 28,
                    height: 28,
                  ),
                ),
                label: 'Market Place',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 4.0), // Adds margin between icon and label
                  child: Image.asset(
                    'lib/assets/booking.png',
                    width: 28,
                    height: 28,
                  ),
                ),
                label: 'Booking',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 4.0), // Adds margin between icon and label
                  child: Image.asset(
                    'lib/assets/settings.png',
                    width: 28,
                    height: 28,
                  ),
                ),
                label: 'Settings',
              ),
            ],
          ),
        ),
      ),
    );
  }



}

class MarketPlacePage extends StatelessWidget {
  const MarketPlacePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        /*
        const Text(
          'Select What You Needddd',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),*/
        const SizedBox(height: 20),
        Expanded(
          child: GridView.count(
            crossAxisCount: 2,
            padding: const EdgeInsets.all(16),
            children: [
              _buildServiceCard(
                context,
                'Air Conditioning',
                'lib/assets/air-conditioning.png', // Path to the image
                '/airconditions',
              ),
              _buildServiceCard(
                context,
                'Home Cleaning',
                'lib/assets/cleaning.png', // Path to the image
                '/home-cleaning',
              ),
              _buildServiceCard(
                context,
                'Painting',
                'lib/assets/painting.png', // Path to the image
                '/painting',
              ),
              _buildServiceCard(
                context,
                'Plumbing',
                'lib/assets/plumbing.png', // Path to the image
                '/plumbing',
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildServiceCard(
      BuildContext context, String title, String imagePath, String route) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Card(
        //elevation: 3,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: const BorderSide(
            color: Color.fromRGBO(232, 232, 232, 1),
            width: 1,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagePath, // Use the provided image path
              width: 50,
              height: 50,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: Color.fromRGBO(94, 105, 207, 1))),
          ],
        ),
      ),
    );
  }

}

class BookingPage extends StatelessWidget {
  const BookingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Booking Page',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Settings Page',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}
