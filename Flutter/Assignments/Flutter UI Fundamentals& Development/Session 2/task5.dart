import 'package:flutter/material.dart';

class FollowerCountWidget extends StatefulWidget {
  const FollowerCountWidget({super.key});

  @override
  State<FollowerCountWidget> createState() => _FollowerCountWidgetState();
}

class _FollowerCountWidgetState extends State<FollowerCountWidget> {
  int subscribe = 1200;

  String? formatFollowers(int count) {
    if (count >= 1000000) {
      return '${(count / 1000000).toStringAsFixed(1)}M';
    } else if (count >= 1000) {
      return '${(count / 1000).toStringAsFixed(1)}k';
    }
    return count.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          'Subscribers',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        Text(
          formatFollowers(subscribe)!,
          style: const TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.red,
          ),
        ),
        const SizedBox(height: 15),

        ElevatedButton(
          onPressed: () {
            int oldSubscribe = subscribe;

            setState(() {
              subscribe += 1000;
            });

            if (oldSubscribe ~/ 10000 != subscribe ~/ 10000) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    '${(subscribe ~/ 10000) * 10}k Milestone reached!',
                  ),
                  backgroundColor: Colors.green,
                ),
              );
            }
          },
          child: const Text('Add 1,000 Followers'),
        ),
      ],
    );
  }
}
