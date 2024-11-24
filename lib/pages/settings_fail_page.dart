import 'package:flutter/material.dart';

class SettingsOkPage extends StatelessWidget {
  const SettingsOkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar with a notification icon
      appBar: AppBar(
        title: const Text('Settings'),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              // Add notification functionality here
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Notification clicked!")),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Success message with a green checkmark
            const Icon(
              Icons.check_circle_outline,
              color: Color.fromARGB(255, 141, 14, 14),
              size: 80,
            ),
            const SizedBox(height: 20),
            const Text(
              'Settings saved faild!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 20),
            // Further content can go here...
            ElevatedButton(
              onPressed: () {
                // Handle any action when clicked, like navigating
                Navigator.pop(context); // Example: navigate back
              },
              child: const Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}

