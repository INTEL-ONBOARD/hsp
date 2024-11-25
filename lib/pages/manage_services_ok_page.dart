import 'package:flutter/material.dart';

class ManageServicesOkPage extends StatelessWidget {
  const ManageServicesOkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,



      //widget for managing a service success screen(implementation is around line ~64)
      body: const SuccessScreen(
        title: "Success!",
        imagePath: "lib/assets/success-tick.png",
        message: "new service added successfully",
      ),
    );
  }
}




//managing a service ok widget for the page
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

