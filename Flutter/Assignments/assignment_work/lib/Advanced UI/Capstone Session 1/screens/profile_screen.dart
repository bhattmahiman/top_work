import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundColor: Color(0xFFEDE7F6),
              child: Icon(Icons.person, size: 55, color: Colors.deepPurple),
            ),
            const SizedBox(height: 15),
            const Text(
              'ServiceHub User',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            Text(
              'user@servicehub.com',
              style: TextStyle(color: Colors.grey.shade600),
            ),
            const SizedBox(height: 25),
            const ListTile(
              leading: Icon(Icons.person_outline),
              title: Text('Edit Profile'),
              trailing: Icon(Icons.arrow_forward_ios, size: 16),
            ),
            const ListTile(
              leading: Icon(Icons.settings_outlined),
              title: Text('Settings'),
              trailing: Icon(Icons.arrow_forward_ios, size: 16),
            ),
          ],
        ),
      ),
    );
  }
}
