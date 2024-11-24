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
      appBar: AppBar(
        title: const Text('Manage Services'),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              // Handle notification button press
              print('Notification button pressed');
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Add Service',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
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
                ElevatedButton(
                  onPressed: () {
                    // Navigate to settings_ok_page.dart
                    Navigator.pushNamed(context, '/settings-ok');
                  },
                  child: const Text('Add'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Navigate to settings_fail_page.dart
                    Navigator.pushNamed(context, '/settings-fail');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                  child: const Text('Clear'),
                ),
              ],
            ),
          ],
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
