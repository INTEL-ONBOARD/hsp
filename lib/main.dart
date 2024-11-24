import 'package:flutter/material.dart';
import 'routes.dart';
// Uncomment the next line if Firebase is required
// import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Uncomment the next line if Firebase is required
  // await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.home, // Starting route
      onGenerateRoute: AppRoutes.generateRoute, // Generate routes dynamically
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFEFEFEF), // Light grey scaffold background
        primaryColor: Colors.white, // Set primary color to white
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white, // Ensure AppBar also uses white color
          titleTextStyle: TextStyle(color: Colors.black), // Black text for the AppBar title
          iconTheme: IconThemeData(color: Colors.black), // Black color for icons in AppBar
        ),
      ),
    );
  }
}
