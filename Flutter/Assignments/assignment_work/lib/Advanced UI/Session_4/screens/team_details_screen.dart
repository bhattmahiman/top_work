import 'package:flutter/material.dart';
import '../models/team_model.dart';

class TeamDetailsScreen extends StatelessWidget {
  final TeamModel team;

  const TeamDetailsScreen({super.key, required this.team});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Team Details'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                team.logo,
                height: 150,
                errorBuilder: (context, error, stackTrace) {
                  return const Icon(
                    Icons.sports_cricket,
                    size: 100,
                    color: Colors.blue,
                  );
                },
              ),

              const SizedBox(height: 20),

              Text(
                team.name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 30),

              const Divider(),

              const SizedBox(height: 15),

              const Text(
                'Team Details',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 10),

              const Text(
                'Team information, players, captain, '
                'achievements and other details will '
                'be displayed here.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
