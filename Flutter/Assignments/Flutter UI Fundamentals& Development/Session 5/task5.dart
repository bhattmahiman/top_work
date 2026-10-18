import 'package:flutter/material.dart';

class Task5 extends StatelessWidget {
  const Task5({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/iPhone_18_Pro_Max.jpg',
            width: 200,
            height: 200,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 20),
          Text(
            'Perfect',
            style: TextStyle(
              fontSize: 32,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Ed Sheeran',
            style: TextStyle(
              fontSize: 20,
              color: Colors.green,
              fontStyle: FontStyle.italic,
            ),
          ),
          SizedBox(height: 10),
          Icon(Icons.favorite, color: Colors.red, size: 40),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              // Add play song functionality here
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
            ),
            child: const Text(
              'Play Now',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
