import 'package:flutter/material.dart';

class Favourites extends StatelessWidget {
  const Favourites({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[300],
      appBar: AppBar(title: Text("Favourites"), backgroundColor: Colors.red),
      body: Center(
        child: Text(
          "Favourites",
          style: TextStyle(color: Colors.white, fontSize: 36),
        ),
      ),
    );
  }
}
