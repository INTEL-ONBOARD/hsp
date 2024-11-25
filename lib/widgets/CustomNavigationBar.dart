import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomNavigationBar({
    required this.currentIndex,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.store), // Icon for Market Place
          label: 'Market Place',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.book_online), // Icon for Booking
          label: 'Booking',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings), // Icon for Settings
          label: 'Settings',
        ),
      ],
    );
  }
}
