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
      "city": "Minuangoda",
      "rating": 4.5,
      "description": "Experienced MAINLY AC technician with 5+  years of experience. Experienced AC technician with 5+  years of experience. Experienced AC technician with 5+  years of experience. Experienced AC technician with 5+  years of experience.",
      "price": "500000",
    },
    {
      "name": "Jane Smith",
      "city": "Minuangoda",
      "rating": 4.8,
      "description": "Specialist in quick repairs and installations.",
      "price": "55",
    },
    {
      "name": "Robert Brown",
      "city": "Minuangoda",
      "rating": 4.6,
      "description": "Affordable and reliable AC repair services.",
      "price": "4500",
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 120, // Set a custom height for the AppBar
        automaticallyImplyLeading: false, // Remove the back button
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding: const EdgeInsets.only(left: 16.0), // Padding on the left for the text
              child: Text(
                "Air Conditioning", // Dynamic title based on the current tab
                style: const TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 22,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16.0), // Padding on the right for the icon
              child: Image.asset(
                'lib/assets/notification-bell.png',
                width: 24,
                height: 24,
              ),
            ),
          ],
        ),
        // Add a Divider at the bottom of the AppBar for a grey horizontal line
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(1.0), // Height of the Divider
          child: Divider(
            color: Color.fromRGBO(233, 233, 233, 1), // Set the color to grey
            thickness: 1, // Set the thickness of the line
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0), // Add padding here
        child: ListView.builder(
          itemCount: workers.length,
          itemBuilder: (context, index) {
            final worker = workers[index];
            return Card(
              color: const Color.fromRGBO(249, 249, 249, 1), //242, 242, 242, 1 for border
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
                side: const BorderSide(
                  color: Color.fromRGBO(242, 242, 242, 1),
                  width: 1,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Left Column
                    Expanded(
                      flex: 2, // Adjust the space taken by the left column
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            worker['name'],
                            style: const TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Text(
                            worker['city'],
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                              color: Color.fromRGBO(156, 156, 156, 1),
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            worker['description'],
                            style: const TextStyle(fontSize: 14, color: Color.fromRGBO(218, 218, 218, 1)),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 16), // Space between columns

                    // Right Column
                    Expanded(
                      flex: 1, // Adjust the space taken by the right column
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Icon(Icons.star, color: Colors.amber),
                              const SizedBox(width: 4),
                              Text(
                                "${worker['rating']}",
                                style: const TextStyle(fontSize: 16, color: Color.fromRGBO(251, 116, 75, 1)),
                              ),
                            ],
                          ),
                          const SizedBox(height: 22),
                          Text(
                            "Rs. ${worker['price']}+",
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                          ),

                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color.fromRGBO(249, 249, 249, 1),
                              minimumSize: const Size(double.infinity, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                                side: const BorderSide( // Border color and width
                                  color: Color.fromRGBO(225, 225, 225, 1), // Set border color to red
                                  width: 2, // Set border width
                                ),
                              ),
                            ),
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
                            child: const Text(
                              'Order',
                              style: TextStyle(color: Color.fromRGBO(89, 89, 89, 1)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

}
