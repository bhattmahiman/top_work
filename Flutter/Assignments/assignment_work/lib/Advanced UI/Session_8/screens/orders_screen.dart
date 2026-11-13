import 'package:flutter/material.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.receipt_long, size: 65, color: Colors.deepOrange),
          SizedBox(height: 12),
          Text(
            'My Orders',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Text('Your recent orders will appear here.'),
        ],
      ),
    );
  }
}
