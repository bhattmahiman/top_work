import 'package:flutter/material.dart';

class Task4 extends StatelessWidget {
  const Task4({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            'https://m.media-amazon.com/images/M/MV5BODI4NTkxOTkxMV5BMl5BanBnXkFtZTgwMzE0MDEzMTE@._V1_FMjpg_UX1000_.jpg',
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
