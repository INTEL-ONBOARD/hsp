import 'package:flutter/material.dart';

class SettingsOkPage extends StatelessWidget {
  const SettingsOkPage({super.key});

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


      //widget for settings success screen(implementation is around line ~64)
      body: const SuccessScreen(
        title: "Success!",
        imagePath: "lib/assets/success-tick.png",
        message: "new changes saved",
      ),
    );
  }
}




//settings ok widget for the page
class SuccessScreen extends StatelessWidget {
  final String imagePath;
  final String title;
  final String message;

  const SuccessScreen({
    super.key,
    required this.title,
    required this.imagePath,
    required this.message,
  });


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(26), // Add padding here
        child: Container(
          decoration: BoxDecoration(
            color: const Color.fromRGBO(249, 249, 249, 1), // Background color
            border: Border.all(
              color: Color.fromRGBO(249, 249, 249, 1), // Border color
              width: 2, // Border width
            ),
            borderRadius: BorderRadius.circular(16), // Rounded corners
          ),
          child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //image file path
                  Image.asset(imagePath, width: 100, height: 100,),
                  Text(
                    title,
                    style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),),
                  //const SizedBox(height: 24,),
                  Text(
                    message,
                    style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black),
                  ),
                  const SizedBox(height: 14,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: const Color.fromRGBO(94, 105, 207, 1),
                      backgroundColor: Colors.white,
                      side: const BorderSide(color: Color.fromRGBO(94, 105, 207, 1), width: 1),
                      minimumSize: const Size(160, 45), // Button size
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8),),
                    ),
                    onPressed: () {
                      // Handle "Done" button action
                    },
                    child: const Text('Done', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400,),
                    ),
                  ),
                ],
              )),
        ),
      ), // padding
    );
  }}

