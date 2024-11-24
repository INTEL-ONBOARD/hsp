import 'package:flutter/material.dart';

class HomeCleaningPage extends StatelessWidget {
  const HomeCleaningPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Cleaning'),
      ),
      body: const Center(
        child: Text(
          'Welcome to the Home Cleaning Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
