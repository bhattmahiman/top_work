import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Task 1")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.waving_hand, size: 30, color: Colors.orange),
              Text("Welcome to Flutter", style: TextStyle(fontSize: 36)),
              Icon(Icons.home, size: 50),
              ElevatedButton(onPressed: () {}, child: Text("Click me !!")),
            ],
          ),
        ),
      ),
    );
  }
}
