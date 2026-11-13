import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  ChatScreen({super.key});

  final List<Map<String, String>> chats = [
    {'sender': 'Rahul Sharma', 'message': 'Hey! How are you?'},
    {'sender': 'Priya Patel', 'message': 'Are we meeting today?'},
    {'sender': 'Amit Shah', 'message': 'Send me the project files.'},
    {'sender': 'Neha Verma', 'message': 'Thank you so much!'},
    {'sender': 'Karan Mehta', 'message': 'See you tomorrow.'},
    {'sender': 'Sneha Joshi', 'message': 'Did you check the assignment?'},
    {'sender': 'Vikas Kumar', 'message': 'Good morning!'},
    {'sender': 'Anjali Desai', 'message': 'Let me know when you are free.'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Chats',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),

      body: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 12),

        itemCount: chats.length,

        // Build individual chat items
        itemBuilder: (context, index) {
          final chat = chats[index];

          return ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 8,
              vertical: 6,
            ),

            // Sender avatar
            leading: CircleAvatar(
              backgroundColor: Colors.green.shade100,
              child: Text(
                chat['sender']![0],
                style: const TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            // Sender name
            title: Text(
              chat['sender']!,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),

            // Last message
            subtitle: Text(
              chat['message']!,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(color: Colors.grey, fontSize: 14),
            ),
          );
        },

        // Add subtle grey divider
        separatorBuilder: (context, index) {
          return const Divider(
            color: Color(0xFFE0E0E0),
            thickness: 0.7,
            height: 1,
            indent: 70,
          );
        },
      ),
    );
  }
}
