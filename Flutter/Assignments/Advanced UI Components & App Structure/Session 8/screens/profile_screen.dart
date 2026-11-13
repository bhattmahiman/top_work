import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(radius: 45, child: Icon(Icons.person, size: 50)),
          SizedBox(height: 12),
          Text(
            'Foodie User',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Text('foodie@example.com'),
        ],
      ),
    );
  }
}
