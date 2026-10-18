import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: Text("Whatsapp")),
      body: Align(
        alignment: Alignment.centerRight,
        child: Container(
          // Maximum bubble width is 80% of screen width
          width: screenWidth * 0.8,
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.green.shade200,
            borderRadius: BorderRadius.circular(15),
          ),
          child: const Text(
            'Hey! How are you doing? Let’s catch up soon.',
            style: TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}
