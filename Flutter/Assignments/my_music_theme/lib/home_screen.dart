import 'package:flutter/material.dart';
import 'widgets/app_button.dart';

class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Screen")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppButton(
              text: "Login",
              backgroundColor: Colors.blue,
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Login button clicked")),
                );
              },
            ),

            const SizedBox(height: 16),

            AppButton(
              text: "Register",
              backgroundColor: Colors.green,
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Register button clicked")),
                );
              },
            ),

            const SizedBox(height: 16),

            AppButton(
              text: "Delete",
              backgroundColor: Colors.red,
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Delete button clicked")),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
