import 'package:flutter/material.dart';

class RatingBar extends StatefulWidget {
  const RatingBar({super.key});

  @override
  State<RatingBar> createState() => _RatingBarState();
}

class _RatingBarState extends State<RatingBar> {
  int ratings = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Ratings : $ratings/5",
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),

        SizedBox(height: 20),

        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            for (int i = 1; i <= 5; i++)
              IconButton(
                onPressed: () {
                  setState(() {
                    ratings = i;
                  });
                },
                icon: Icon(
                  i <= ratings ? Icons.star : Icons.star_border,
                  color: i <= ratings ? Colors.amber : Colors.grey,
                  size: 40,
                ),
              ),
          ],
        ),
      ],
    );
  }
}
