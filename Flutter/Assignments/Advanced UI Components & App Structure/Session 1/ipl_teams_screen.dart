import 'package:flutter/material.dart';

class IPLTeamsScreen extends StatelessWidget {
  IPLTeamsScreen({super.key});

  final List<String> teams = [
    'Chennai Super Kings',
    'Mumbai Indians',
    'Royal Challengers Bengaluru',
    'Kolkata Knight Riders',
    'Rajasthan Royals',
    'Sunrisers Hyderabad',
    'Delhi Capitals',
    'Punjab Kings',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trending IPL Teams'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),

      body: ListView.separated(
        padding: const EdgeInsets.all(12),
        itemCount: teams.length,

        // Build each team card
        itemBuilder: (context, index) {
          return Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              leading: const Icon(
                Icons.sports_cricket,
                color: Colors.blue,
                size: 30,
              ),
              title: Text(
                teams[index],
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        },

        // Add 12 pixels spacing between cards
        separatorBuilder: (context, index) {
          return const SizedBox(height: 12);
        },
      ),
    );
  }
}
