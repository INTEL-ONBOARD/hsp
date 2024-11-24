import 'package:flutter/material.dart';


class ManageServicesPage extends StatefulWidget {
  const ManageServicesPage({super.key});

  @override
  _ManageServicesPageState createState() => _ManageServicesPageState();
}

class _ManageServicesPageState extends State<ManageServicesPage> {
  final _descriptionController = TextEditingController();
  final _priceController = TextEditingController();
  String? _selectedLocation;

  @override
  void dispose() {
    _descriptionController.dispose();
    _priceController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 120, // Set a custom height for the AppBar
        automaticallyImplyLeading: true, // back button visibility
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding: const EdgeInsets.only(
                  left: 16.0), // Padding on the left for the text
              child: Text(
                "View Services", // Dynamic title based on the current tab
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
          //divider
          preferredSize: Size.fromHeight(1.0),
          child: Divider(
            color: Color.fromRGBO(233, 233, 233, 1),
            thickness: 1,
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Container(
          padding: const EdgeInsets.all(16), // Padding inside the container
          decoration: BoxDecoration(
            color: Colors.white, // Background color for the container
            border: Border.all(
              color: Color.fromRGBO(242, 242, 242, 1), // Red border color
              width: 2, // Border width
            ),
            borderRadius: BorderRadius.circular(8), // Optional: Rounded corners
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 9),
              const Text(
                'Add a Service',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 16),
              // Description Field
              TextField(
                controller: _descriptionController,
                maxLines: 4,
                decoration: const InputDecoration(
                  labelText: 'Description',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              // Price Field with "Return 0" Button
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _priceController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelText: 'Price',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _priceController.text = '0';
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                    ),
                    child: const Text('Return 0'),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              // Location Dropdown
              DropdownButtonFormField<String>(
                value: _selectedLocation,
                items: const [
                  DropdownMenuItem(
                    value: 'Rathnapura',
                    child: Text('Rathnapura'),
                  ),
                  DropdownMenuItem(
                    value: 'Minuwangoda',
                    child: Text('Minuwangoda'),
                  ),
                  DropdownMenuItem(
                    value: 'Gampaha',
                    child: Text('Gampaha'),
                  ),
                  DropdownMenuItem(
                    value: 'Kandy',
                    child: Text('Kandy'),
                  ),
                  DropdownMenuItem(
                    value: 'Galle',
                    child: Text('Galle'),
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    _selectedLocation = value;
                  });
                },
                decoration: const InputDecoration(
                  labelText: 'Location',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              // Add and Clear Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 150,
                    height: 45,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white, // Purple
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(color: Color.fromRGBO(94, 105, 207, 1))
                        ),
                        foregroundColor: Colors.white, // Set text color to white
                      ),
                      onPressed: () {
                        // Navigate to settings_ok_page.dart
                        Navigator.pushNamed(context, '/settings-ok');
                      },
                      child: const Text(
                        'Add',
                        style: TextStyle(fontSize: 16, color: Color.fromRGBO(94, 105, 207, 1)),
                      ),
                    ),
                  ),

                  SizedBox(
                    width: 150,
                    height: 45,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(94, 105, 207, 1), // Purple
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        foregroundColor: Colors.white, // Set text color to white
                      ),
                      onPressed: () {
                        // Navigate to settings_ok_page.dart
                        Navigator.pushNamed(context, '/settings-failed');
                      },
                      child: const Text(
                        'Clear',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),




      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0, // Change index dynamically if needed
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.pushNamed(context, '/dashboard');
              break;
            case 1:
              Navigator.pushNamed(context, '/booking');
              break;
            case 2:
              Navigator.pushNamed(context, '/settings');
              break;
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book_online),
            label: 'Booking',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
