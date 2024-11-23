import 'package:flutter/material.dart';

class PlumbingPage extends StatelessWidget {
  const PlumbingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120, // Set a custom height for the AppBar
        automaticallyImplyLeading: true, // back button visibility
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding: const EdgeInsets.only(left: 16.0), // Padding on the left for the text
              child: Text(
                "Plumbing", // Dynamic title based on the current tab
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
      body: const Center(
        child: Text(
          'Welcome to the Plumbing Service Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
