import 'package:flutter/material.dart';

class SongTitleCard extends StatefulWidget {
  const SongTitleCard({super.key});

  @override
  State<SongTitleCard> createState() => _SongTitleCardState();
}

class _SongTitleCardState extends State<SongTitleCard> {
  bool isFav = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.green[200],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Blinding Lights',
                  style: TextStyle(
                    color: Color.fromARGB(255, 41, 92, 43),
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  'The Weeknd',
                  style: TextStyle(
                    color: Color.fromARGB(148, 41, 92, 43),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.play_circle,
                  color: Color.fromARGB(255, 41, 92, 43),
                  size: 40,
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      isFav = !isFav;
                    });
                  },
                  icon: Icon(
                    isFav ? Icons.favorite : Icons.favorite_border_rounded,
                    color: Color.fromARGB(255, 41, 92, 43),
                    size: 40,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
