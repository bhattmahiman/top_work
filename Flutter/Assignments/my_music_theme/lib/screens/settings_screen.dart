import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text("Settings"),
        backgroundColor: Colors.blue[200],
      ),
      body: Center(child: Text("Settings")),
    );
  }
}
