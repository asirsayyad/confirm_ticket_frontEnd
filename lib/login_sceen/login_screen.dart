import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center( // Center aligns the entire column vertically
        child: Column(
          children: [
            SizedBox(height: 100), // Push content down a bit
             CircleAvatar(
              radius: 40,
              child: Icon(Icons.person, size: 50),
            ),
            SizedBox(height: 20),

            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.phone_android),
              label: Text("Sign in with Mobile Number"),
            ),
            SizedBox(height: 10),

            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.g_mobiledata),
              label: Text("Sign in with Google"),
            ),
          ],
        ),
      ),
    );
  }
}
