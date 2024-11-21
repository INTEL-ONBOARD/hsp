import 'package:flutter/material.dart';
import '../services/auth_service.dart';

class RegisterPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Register')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: emailController,
              decoration: const InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: const InputDecoration(labelText: 'Password'),
            ),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: const InputDecoration(labelText: 're-enter Password'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              
              onPressed: () async {
                // bool success = await AuthService().register(
                //   emailController.text,
                //   passwordController.text,
                // );
                // if (success) {
                //   Navigator.pop(context);
                // } else {
                //   ScaffoldMessenger.of(context).showSnackBar(
                //     SnackBar(content: Text('Registration failed')),
                //   );
                // }
              },
              child: const Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}
