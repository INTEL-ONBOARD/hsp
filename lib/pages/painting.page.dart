import 'package:flutter/material.dart';

class PaintingPage extends StatelessWidget {
  const PaintingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Painting Service'),
      ),
      body: const Center(
        child: Text(
          'Welcome to the Painting Service Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
