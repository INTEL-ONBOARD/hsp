import 'package:flutter/material.dart';

class PlumbingPage extends StatelessWidget {
  const PlumbingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Plumbing Service'),
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
