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
        toolbarHeight: 100, // Set a custom height for the AppBar
        automaticallyImplyLeading: false, // Remove the back button
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0), // Padding on the left for the text
              child: Text(
                _getAppBarTitle(), // Dynamic title based on the current tab
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

      body: _pages[_currentIndex], // Display the corresponding page
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
                _currentIndex = index; // Update the index when an item is tapped
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
        // const SizedBox(height: 20),
        // const SizedBox(height: 20),
        Expanded(
          child: GridView.count(
            crossAxisCount: 2,
            padding: const EdgeInsets.all(26),
            crossAxisSpacing: 8, // Space between columns
            mainAxisSpacing: 8,
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

  Widget _buildServiceCard(BuildContext context, String title, String imagePath, String route) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
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
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: Color.fromRGBO(94, 105, 207, 1),
              ),
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



class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  // Controller for email input
  final TextEditingController _emailController = TextEditingController();

  // Focus node for email field
  final FocusNode _emailFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();

    // Adding focus listener to handle placeholder disappearing
    _emailFocusNode.addListener(() {
      setState(() {}); // Rebuild UI when focus changes
    });
  }

  @override
  void dispose() {
    _emailController.dispose();
    _emailFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0), // Padding around the whole content
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
          children: [
          // This SizedBox adds space at the top to move the content upwards
          SizedBox(height: 0),

        Card(
          color: Color(0xF9F9F9), // Set the background color to #F2F2F2
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 0, // No shadow
          child: Padding(
            padding: const EdgeInsets.all(19.0), // Padding inside the card
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title
                const Text(
                  'Edit personal details',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),

                // Email field
                const Text(
                  'Your Email',
                  style: TextStyle(fontSize: 14),
                ),
                const SizedBox(height: 8),
                TextField(
                  controller: _emailController,
                  focusNode: _emailFocusNode,
                  decoration: InputDecoration(
                    hintText: _emailFocusNode.hasFocus ? '' : 'test@gmail.com',
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(height: 16),

                // Password field
                const Text(
                  'Password',
                  style: TextStyle(fontSize: 14),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: '*******',
                          filled: true,
                          fillColor: Colors.grey[200],
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(125, 105, 239, 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.refresh, color: Colors.white),
                        onPressed: () {
                          // Add action for password reset
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),

                // Location dropdown field
                const Text(
                  'Location',
                  style: TextStyle(fontSize: 14),
                ),
                const SizedBox(height: 8),
                DropdownButtonFormField<String>(
                  value: 'Minuwangoda',
                  items: <String>['Minuwangoda', 'Colombo', 'Kandy', 'Galle']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  onChanged: (String? newValue) {
                    // Handle location change
                  },
                ),
                const SizedBox(height: 16),

                // Mobile Number field
                const Text(
                  'Mobile Number',
                  style: TextStyle(fontSize: 14),
                ),
                const SizedBox(height: 8),
                TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    hintText: '+9478 2345 234',
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // Update Button
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(125, 105, 239, 1), // Purple
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      foregroundColor: Colors.white, // Set text color to white
                    ),
                    onPressed: () {
                      // Add action for updating details
                    },
                    child: const Text(
                      'Update',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                // Dashboard and Log out buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 170, // Set your desired width for the Dashboard button
                      child: OutlinedButton(
                        onPressed: () {
                          // Navigate to Dashboard
                        },
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          side: const BorderSide(
                            color: Color.fromRGBO(125, 105, 239, 1), // Border color
                            width: 2, // Border width
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          backgroundColor: Colors.transparent, // Transparent background
                        ),
                        child: const Text(
                          'Dashboard',
                          style: TextStyle(
                            color: Color.fromRGBO(125, 105, 239, 1), // Text color matching the border
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 150, // Set your desired width for the Log out button
                      child: ElevatedButton(
                        onPressed: () {
                          // Log out action
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(56, 58, 87, 1), // Darker color (like in your image)
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                        ),
                        child: const Text(
                          'Log out',
                          style: TextStyle(
                            color: Colors.white, // White text color for the "Log out" button
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
    ],
      ),
    );
  }
}
