// import 'package:assignment_work/Session_2/task1.dart';
// import 'package:assignment_work/Session_2/task2.dart';
// import 'package:assignment_work/Session_2/task3.dart';
// import 'package:assignment_work/Session_2/task4.dart';
// import 'package:assignment_work/grattings.dart';
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
      theme: ThemeData(primarySwatch: Colors.purple),
      // home: Scaffold(
      //   appBar: AppBar(title: Text("Task 1")),
      //   body: Center(
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         Icon(Icons.waving_hand, size: 30, color: Colors.orange),
      //         Text("Welcome to Flutter", style: TextStyle(fontSize: 36)),
      //         Icon(Icons.home, size: 50),
      //         ElevatedButton(onPressed: () {}, child: Text("Click me !!")),
      //       ],
      //     ),
      //   ),
      // ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Profile"),
          backgroundColor: Colors.deepPurple,
          foregroundColor: Colors.white,

          actions: [
            IconButton(
              onPressed: () {
                print("Search Clicked");
              },
              icon: Icon(Icons.search),
              tooltip: 'Search',
            ),

            IconButton(
              onPressed: () {
                print("Settings Clicked");
              },
              icon: Icon(Icons.settings),
              tooltip: 'Settings',
            ),
          ],
        ),
        backgroundColor: Colors.deepPurple,
        body: Center(
          child: Text(
            "Welcome to My Profile",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
