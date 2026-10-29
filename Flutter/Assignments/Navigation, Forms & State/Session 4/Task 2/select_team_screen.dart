import 'package:flutter/material.dart';

class SelectTeamScreen extends StatelessWidget {
  const SelectTeamScreen({super.key});

  final List<String> teams = const [
    'Chennai Super Kings',
    'Mumbai Indians',
    'Royal Challengers Bengaluru',
    'Kolkata Knight Riders',
    'Rajasthan Royals',
    'Sunrisers Hyderabad',
    'Delhi Capitals',
    'Punjab Kings',
    'Gujarat Titans',
    'Lucknow Super Giants',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Your Team'),
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: teams.length,
        itemBuilder: (context, index) {
          final selectedTeam = teams[index];

          return ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.deepOrange,
              child: Icon(Icons.sports_cricket, color: Colors.white),
            ),
            title: Text(
              selectedTeam,
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              Navigator.pop(context, selectedTeam);
            },
          );
        },
      ),
    );
  }
}
