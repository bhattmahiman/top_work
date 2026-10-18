import 'package:flutter/material.dart';

class ProfileTabsScreen extends StatefulWidget {
  const ProfileTabsScreen({super.key});

  @override
  State<ProfileTabsScreen> createState() => _ProfileTabsScreenState();
}

class _ProfileTabsScreenState extends State<ProfileTabsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(title: Text("Instagram Profile Tabs")),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Posts'),
              ),
            ),

            Expanded(
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Reels'),
              ),
            ),

            Expanded(
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Tagged'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
