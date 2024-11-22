import 'dart:async';
import 'package:flutter/material.dart';
import 'login_page.dart'; // Make sure this page is properly imported

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(12, 18, 67, 1), // Blue background color
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center, // Center content vertically
        crossAxisAlignment: CrossAxisAlignment.center, // Center content horizontally
        children: [
          Container(
            width: double.infinity, // Full width
            height: 610, // Height of the outer rectangle (can be adjusted)
            color: const Color.fromRGBO(32, 43, 147, 1), // Outer rectangle color
            child: Center(
              child: Container(
                width: double.infinity, // Full width inside the outer rectangle
                height: 420, // Height for the middle rectangle
                color: const Color.fromRGBO(94, 105, 207, 1), // Middle rectangle color
                child: Center(
                  child: Container(
                    width: double.infinity, // Full width inside the middle rectangle
                    height: 250, // Height for the inner white rectangle
                    color: Colors.white, // White color for the innermost rectangle
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center, // Center content vertically
                        crossAxisAlignment: CrossAxisAlignment.center, // Center content horizontally
                        children: [
                          const Text(
                            "HOMEEASE", // Text to display
                            style: TextStyle(
                              fontSize: 40, // Large font size
                              fontWeight: FontWeight.bold, // Bold text
                              fontStyle: FontStyle.italic, // Make the text italic
                              letterSpacing: 10, // Spacing between the letters
                              color: Color.fromRGBO(32, 43, 147, 1), // Text color matching the outer rectangle
                            ),
                          ),
                          const SizedBox(height: 10), // Adds space between the two texts
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 40), // Margin to give space on both sides
                            child: const Text(
                              "one place where you can find anything in a second", // New text below HOMEEASE
                              style: TextStyle(
                                fontSize: 16, // Smaller font size for the second line
                                fontWeight: FontWeight.w300, // Normal font weight
                                fontStyle: FontStyle.italic, // Regular font style
                                color: Color.fromRGBO(32, 43, 147, 1), // Black text color for the second line
                              ),
                              textAlign: TextAlign.center, // Center the text horizontally
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
