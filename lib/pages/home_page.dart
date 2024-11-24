import 'package:flutter/material.dart';
import 'airconditions_page.dart';
import 'home_cleaning-page.dart'; // Corrected the file name
import 'painting.page.dart'; // Corrected the file name
import 'plumbing_page.dart';
import 'settings_ok_page.dart'; // Correct import for SettingsOkPage

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
        toolbarHeight: 120, // Set a custom height for the AppBar
        automaticallyImplyLeading: false, // Remove the back button
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 16.0), // Padding on the left for the text
              child: Text(
                _getAppBarTitle(), // Dynamic title based on the current tab
                style: const TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 22,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  right: 16.0), // Padding on the right for the icon
              child: Image.asset(
                'lib/assets/notification-bell.png',
                width: 24,
                height: 24,
              ),
            ),
          ],
        ),
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
            selectedLabelStyle:
                TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            unselectedLabelStyle:
                TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            selectedItemColor: Colors.white, // Text color for the selected item
            unselectedItemColor:
                Colors.white70, // Text color for unselected items
          ),
        ),
        child: SizedBox(
          height: 100, // Custom height for the BottomNavigationBar
          child: BottomNavigationBar(
            currentIndex: _currentIndex,
            backgroundColor: const Color.fromRGBO(94, 105, 207, 1),
            onTap: (index) {
              setState(() {
                _currentIndex =
                    index; // Update the index when an item is tapped
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(
                      bottom: 4.0), // Adds margin between icon and label
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
                  padding: const EdgeInsets.only(
                      bottom: 4.0), // Adds margin between icon and label
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
                  padding: const EdgeInsets.only(
                      bottom: 4.0), // Adds margin between icon and label
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

  Widget _buildServiceCard(
      BuildContext context, String title, String imagePath, String route) {
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
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();
  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();
  String _selectedLocation = 'Minuwangoda'; // Default value for location

  final List<String> _locations = ['Minuwangoda', 'Rathnapura', 'Galle'];

  @override
  void initState() {
    super.initState();
    _emailFocusNode.addListener(() {
      setState(() {});
    });
    _passwordFocusNode.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _mobileController.dispose();
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 0),
          Card(
            color: const Color(0x00f9f9f9),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 0,
            child: Padding(
              padding: const EdgeInsets.all(19.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Edit personal details',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text('Your Email'),
                  const SizedBox(height: 8),
                  TextField(
                    controller: _emailController,
                    focusNode: _emailFocusNode,
                    decoration: InputDecoration(
                      hintText:
                          _emailFocusNode.hasFocus ? '' : 'test@gmail.com',
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text('Password'),
                  const SizedBox(height: 8),
                  TextField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text('Location'),
                  const SizedBox(height: 8),
                  DropdownButtonFormField<String>(
                    value: _selectedLocation,
                    onChanged: (String? newValue) {
                      setState(() {
                        _selectedLocation = newValue!;
                      });
                    },
                    items: _locations
                        .map<DropdownMenuItem<String>>(
                            (String value) => DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                ))
                        .toList(),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text('Mobile Number'),
                  const SizedBox(height: 8),
                  TextField(
                    controller: _mobileController,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintText: 'Enter your mobile number',
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      const Spacer(),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SettingsOkPage()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 50, vertical: 12),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          backgroundColor: const Color.fromRGBO(94, 105, 207,
                              1), // Replaced 'primary' with 'backgroundColor'
                        ),
                        child: const Text('Save Changes'),
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
