// import 'package:flutter/material.dart';

// class MyCoolApp extends StatelessWidget {
//   const MyCoolApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Foodie Explorer',
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(title: const Text('Foodie Explorer Home')),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               const Text(
//                 'Hello from MyCoolApp!',
//                 style: TextStyle(fontSize: 24),
//               ),
//               const SizedBox(height: 30),
//               ElevatedButton(
//                 onPressed: () {
//                   Navigator.pushNamed(context, '/profile');
//                 },
//                 child: const Text('Go to Profile'),
//               ),
//             ],
//           ),
//         ),
//       ),
//       routes: {'/profile': (context) => const ProfileScreen()},
//     );
//   }
// }

// class ProfileScreen extends StatelessWidget {
//   const ProfileScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('My Profile')),
//       body: const Center(
//         child: Text('My Profile', style: TextStyle(fontSize: 24)),
//       ),
//     );
//   }
// }
