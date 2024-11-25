import 'package:flutter/material.dart';

class SettingsOkPage extends StatelessWidget {
  const SettingsOkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings Saved'),
        backgroundColor: const Color.fromRGBO(94, 105, 207, 1),
      ),
      body: const Center(
        child: Text('Your changes have been saved!'),
      ),
    );
  }
}
