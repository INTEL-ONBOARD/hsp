import 'package:flutter/material.dart';

class PaintingPage extends StatelessWidget {
  const PaintingPage({super.key});

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
              padding: const EdgeInsets.only(
                  left: 16.0), // Padding on the left for the text
              child: Text(
                "Painting", // Dynamic title based on the current tab
                style: const TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 22,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  right: 16.0), // Padding on the right for the icon
              child: Image.asset(
                'lib/assets/notification-bell.png',
                width: 24,
                height: 24,
              ),
            ),
          ],
        ),

        bottom: const PreferredSize(
          //divider
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

class ScheduleDateConfirmation extends StatelessWidget {
  const ScheduleDateConfirmation({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Container(
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
                    "Confirm schedule Date?",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.black),),
                  //const SizedBox(height: 24,),
                  // Date dropdown?

                  const SizedBox(height: 8, width: 10,),
                  DropdownButtonFormField<String>(
                    value: 'Minuwangoda',
                    items: <String>['Minuwangoda', 'Colombo', 'Kandy', 'Galle']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    onChanged: (String? newValue) {
                      // Handle location change
                    },
                  ),


                  const SizedBox(height: 12,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: const Color.fromRGBO(94, 105, 207, 1),
                      side: const BorderSide(color: Color.fromRGBO(94, 105, 207, 1), width: 1),
                      minimumSize: const Size(280, 45), // Button size
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8),),
                    ),
                    onPressed: () {
                      // Handle "Done" button action
                    },
                    child: const Text('Place Order', style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal,),
                    ),
                  ),
                  const SizedBox(height: 12,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Color.fromRGBO(94, 105, 207, 1),
                      backgroundColor: Colors.white,
                      side: const BorderSide(color: Color.fromRGBO(94, 105, 207, 1), width: 1),
                      minimumSize: const Size(280, 45), // Button size
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8),),
                    ),
                    onPressed: () {
                      // Handle "Done" button action
                    },
                    child: const Text('Go Back', style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal,),
                    ),
                  ),
                ],
              )),
        ),
      ), // padding
    );
  }}

