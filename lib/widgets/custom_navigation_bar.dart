import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomNavigationBar({
    required this.currentIndex,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedLabelStyle: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
          unselectedLabelStyle: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
          selectedItemColor: Colors.white, // Text color for the selected item
          unselectedItemColor: Colors.white70, // Text color for unselected items
        ),
      ),
      child: SizedBox(
        height: 100, // Custom height for the BottomNavigationBar
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          backgroundColor: const Color.fromRGBO(94, 105, 207, 1),
          onTap: onTap,
          items: [
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(bottom: 4.0), // Margin between icon and label
                child: Image.asset(
                  'lib/assets/market-place.png',
                  width: 28,
                  height: 28,
                ),
              ),
              label: 'Market Place',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(bottom: 4.0),
                child: Image.asset(
                  'lib/assets/booking.png',
                  width: 28,
                  height: 28,
                ),
              ),
              label: 'Booking',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(bottom: 4.0),
                child: Image.asset(
                  'lib/assets/settings.png',
                  width: 28,
                  height: 28,
                ),
              ),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }

}
