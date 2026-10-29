import 'package:flutter/material.dart';

class MySimpleRow extends StatelessWidget {
  const MySimpleRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.favorite, size: 36, color: Colors.red),
          SizedBox(width: 10),
          Icon(Icons.share, size: 36, color: Colors.blue),
          SizedBox(width: 10),
          Icon(Icons.comment, size: 36, color: Colors.green),
        ],
      ),
    );
  }
}
