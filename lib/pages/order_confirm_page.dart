import 'package:flutter/material.dart';

class OrderConfirmPage extends StatelessWidget {
  const OrderConfirmPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 120, // Set a custom height for the AppBar
        automaticallyImplyLeading: true, // back button visibility
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 16.0), // Padding on the left for the text
              child: Text(
                "Air Conditioning", // Dynamic title based on the current tab
                style: TextStyle(
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
        bottom: const PreferredSize(
          // Divider
          preferredSize: Size.fromHeight(1.0),
          child: Divider(
            color: Color.fromRGBO(233, 233, 233, 1),
            thickness: 1,
          ),
        ),
      ),
      body: const ScheduleDateConfirmation(),
    );
  }
}

class ScheduleDateConfirmation extends StatefulWidget {
  const ScheduleDateConfirmation({super.key});

  @override
  State<ScheduleDateConfirmation> createState() => _ScheduleDateConfirmationState();
}

class _ScheduleDateConfirmationState extends State<ScheduleDateConfirmation> {
  DateTime? _selectedDate; // Variable to store the selected date

  // Function to show the date picker
  Future<void> _pickDate() async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(), // Current date as default
      firstDate: DateTime(2000), // Earliest selectable date
      lastDate: DateTime(2100), // Latest selectable date
    );

    if (pickedDate != null) {
      setState(() {
        _selectedDate = pickedDate; // Update the selected date
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Container(
          padding: const EdgeInsets.all(30),
          decoration: BoxDecoration(
            color: const Color.fromRGBO(249, 249, 249, 1),
            border: Border.all(
              color: const Color.fromRGBO(249, 249, 249, 1),
              width: 2, // Border width
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Confirm Schedule Date?",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 14),

/*
                // Date Picker Button
                ElevatedButton(
                  onPressed: _pickDate,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(94, 105, 207, 1),
                    foregroundColor: Colors.white,
                    minimumSize: const Size(280, 45),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'Select Date',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
*/




                const SizedBox(height: 8),
                // Display Selected Date
                if (_selectedDate != null)
                  Text(
                    'Selected Date: ${_selectedDate!.toLocal()}'.split(' ')[0],
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(152, 160, 228, 1),
                    ),
                  ),
                const SizedBox(height: 18),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: const Color.fromRGBO(94, 105, 207, 1),
                    side: const BorderSide(
                        color: Color.fromRGBO(94, 105, 207, 1), width: 1),
                    minimumSize: const Size(280, 45), // Button size
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {
                    // Handle "Place Order" button action
                  },
                  child: const Text(
                    'Place Order',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                const SizedBox(height: 18),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: const Color.fromRGBO(94, 105, 207, 1),
                    backgroundColor: Colors.white,
                    side: const BorderSide(
                        color: Color.fromRGBO(94, 105, 207, 1), width: 1),
                    minimumSize: const Size(280, 45), // Button size
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {
                    // Handle "Go Back" button action
                  },
                  child: const Text(
                    'Go Back',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
