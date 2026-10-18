import 'package:flutter/material.dart';

class UserGreeting extends StatelessWidget {
  const UserGreeting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Task 4")),
      body: Center(
        child: Text("Hello, Flutter Learner!", style: TextStyle(fontSize: 36)),
      ),
    );
  }
}
