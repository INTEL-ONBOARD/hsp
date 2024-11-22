import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  String? selectedRole; // To store the selected role

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   elevation: 0,
      //   centerTitle: false,
      //   title: const Text(
      //     'HomeEaze',
      //     style: TextStyle(
      //       fontWeight: FontWeight.normal,
      //       fontSize: 18,
      //       color: Colors.black,
      //     ),
      //   ),
      // ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Register',
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 1),
                  const Text(
                    'Easy way to Create an Account',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  const SizedBox(height: 20),

                  TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      labelText: 'Email',
                      labelStyle: TextStyle(
                        color: Color.fromRGBO(132, 132, 132, 1), // Change the label text color to red
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(202, 202, 202, 1), //border: 1px solid rgba(202, 202, 202, 1) Default border color
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(202, 202, 202, 1), // Border color when enabled
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(94, 105, 207, 0.6), // Border color when focused
                          width: 2.0, // Optional: increase border thickness when focused
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      labelText: 'Password',
                      labelStyle: TextStyle(
                        color: Color.fromRGBO(132, 132, 132, 1), // Change the label text color to red
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(202, 202, 202, 1), //border: 1px solid rgba(202, 202, 202, 1) Default border color
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(202, 202, 202, 1), // Border color when enabled
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(94, 105, 207, 0.6), // Border color when focused
                          width: 2.0, // Optional: increase border thickness when focused
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    controller: confirmPasswordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      labelText: 'Repeat Password',
                      labelStyle: TextStyle(
                        color: Color.fromRGBO(132, 132, 132, 1), // Change the label text color to red
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(202, 202, 202, 1), //border: 1px solid rgba(202, 202, 202, 1) Default border color
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(202, 202, 202, 1), // Border color when enabled
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(94, 105, 207, 0.6), // Border color when focused
                          width: 2.0, // Optional: increase border thickness when focused
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.account_circle),
                      labelStyle: TextStyle(
                        color: Color.fromRGBO(132, 132, 132, 1), // Change the label text color to red
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(202, 202, 202, 1), //border: 1px solid rgba(202, 202, 202, 1) Default border color
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(202, 202, 202, 1), // Border color when enabled
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(94, 105, 207, 0.6), // Border color when focused
                          width: 2.0, // Optional: increase border thickness when focused
                        ),
                      ),
                      labelText: 'Select Role',
                    ),
                    value: selectedRole,
                    items: const [
                      DropdownMenuItem(
                        value: 'Customer',
                        child: Text('Customer'),
                      ),
                      DropdownMenuItem(
                        value: 'Provider',
                        child: Text('Provider'),
                      ),
                      // DropdownMenuItem(
                      //   value: 'Admin',
                      //   child: Text('Admin'),
                      // ),
                    ],
                    onChanged: (value) {
                      setState(() {
                        selectedRole = value;
                      });
                    },
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(94, 105, 207, 1.0),
                      minimumSize: const Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () async {
                      // Validate fields and selected role
                      if (selectedRole == null) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Please select a role')),
                        );
                        return;
                      }
                      // Add registration logic here
                    },
                    child: const Text(
                      'Register',
                      style: TextStyle(
                      color: Colors.white, // Set the text color to white
                      fontWeight: FontWeight.normal, // Optional: make text bold
                    ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Center(
                    child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        'Already have an account? Login here',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
