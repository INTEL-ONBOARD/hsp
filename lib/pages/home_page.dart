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
      appBar: AppBar(
        title: const Text('Market Place'),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'lib/assets/market-place.png', // Dummy image path for "Market Place"
              width: 24,
              height: 24,
            ),
            label: 'Market Place',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'lib/assets/booking.png', // Dummy image path for "Booking"
              width: 24,
              height: 24,
            ),
            label: 'Booking',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'lib/assets/settings.png', // Dummy image path for "Settings"
              width: 24,
              height: 24,
            ),
            label: 'Settings',
          ),
        ],
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
        const Text(
          'Select What You Need',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
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
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
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
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: Color.fromRGBO(94, 105, 207, 1)), //rgba(94, 105, 207, 1)
            ),
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
