// lib/navigator/router.dart
import 'package:go_router/go_router.dart';
import 'root_constants.dart'; // root_constants.dart が作成された後に有効化

// TODO: Define your routes here
final GoRouter router = GoRouter(
  initialLocation: '/', // TODO: Set your initial location
  routes: <GoRoute>[
    // Example route:
    // GoRoute(
    //   path: '/',
    //   builder: (context, state) => const PlaceholderWidget(), // Replace with your actual screen
    // ),
  ],
  // errorBuilder: (context, state) => ErrorScreen(error: state.error), // Optional error handler
);

// PlaceholderWidget for example route
// import 'package:flutter/material.dart';
// class PlaceholderWidget extends StatelessWidget {
//   const PlaceholderWidget({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       body: Center(
//         child: Text('Placeholder Screen'),
//       ),
//     );
//   }
// }
