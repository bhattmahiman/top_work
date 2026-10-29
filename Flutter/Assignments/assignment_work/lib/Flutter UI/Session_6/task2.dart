import 'package:flutter/material.dart';

class PlaylistVotingScreen extends StatefulWidget {
  const PlaylistVotingScreen({super.key});

  @override
  State<PlaylistVotingScreen> createState() => _PlaylistVotingScreenState();
}

class _PlaylistVotingScreenState extends State<PlaylistVotingScreen> {
  int voteCount = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Perfect - Ed Sheeran',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),

        SizedBox(height: 10),

        Text(
          'Votes: $voteCount',
          style: const TextStyle(fontSize: 22, color: Colors.deepPurple),
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  voteCount++;
                });
              },
              child: Text("Upvote"),
            ),
            SizedBox(width: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  voteCount--;
                });
              },
              child: Text("Downvote"),
            ),
          ],
        ),
      ],
    );
  }
}
