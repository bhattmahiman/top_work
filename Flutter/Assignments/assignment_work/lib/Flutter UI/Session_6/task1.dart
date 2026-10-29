import 'package:flutter/material.dart';

class LikeButton extends StatefulWidget {
  const LikeButton({super.key});

  @override
  State<LikeButton> createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  int like = 0;
  bool isLike = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {
            setState(() {
              like += 1;
              isLike = true;
            });
          },
          icon: Icon(
            Icons.favorite,
            color: isLike ? Colors.red : Colors.grey,
            size: 30,
          ),
        ),
        SizedBox(height: 20),
        Text("$like"),
      ],
    );
  }
}
