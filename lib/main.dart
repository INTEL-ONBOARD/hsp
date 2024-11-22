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
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.intro, // Starting route
      onGenerateRoute: AppRoutes.generateRoute, // Generate routes dynamically
    );
  }
}
