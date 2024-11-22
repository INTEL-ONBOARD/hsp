import 'package:flutter/material.dart';

class AirConditionsHomePage extends StatefulWidget {
  const AirConditionsHomePage({super.key});

  @override
  _AirConditionsHomePageState createState() => _AirConditionsHomePageState();
}

class _AirConditionsHomePageState extends State<AirConditionsHomePage> {
  int _currentIndex = 0; // For managing the bottom navigation

  final List<Map<String, dynamic>> workers = const [
    {
      "name": "John Doe",
      "rating": 4.5,
      "description": "Experienced AC technician with 5+ years of experience.",
      "price": "\$50/hr",
    },
    {
      "name": "Jane Smith",
      "rating": 4.8,
      "description": "Specialist in quick repairs and installations.",
      "price": "\$55/hr",
    },
    {
      "name": "Robert Brown",
      "rating": 4.6,
      "description": "Affordable and reliable AC repair services.",
      "price": "\$45/hr",
    },
  ];

  // Bottom Navigation Pages
  final List<Widget> _pages = [
    const Text("Home Page Content"), // Placeholder for Home Page
    const Text("Settings Page Content"), // Placeholder for Settings Page
    const Text("Profile Page Content"), // Placeholder for Profile Page
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Air Conditioning Services"),
      ),
      body: ListView.builder(
        itemCount: workers.length,
        itemBuilder: (context, index) {
          final worker = workers[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    worker['name'],
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.amber),
                      const SizedBox(width: 4),
                      Text(
                        "${worker['rating']}",
                        style: const TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    worker['description'],
                    style: const TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Price: ${worker['price']}",
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Align(
                    alignment: Alignment.centerRight,
                    child: ElevatedButton(
                      onPressed: () {
                        // Handle booking action
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              "Booked ${worker['name']}",
                              style: const TextStyle(fontSize: 16),
                            ),
                          ),
                        );
                      },
                      child: const Text('Book Worker'),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
