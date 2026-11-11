// Brings in Flutter's ready-made building blocks
import 'package:flutter/material.dart';

// The app starts here
void main() {
  runApp(const MyApp());
}

// Sets up the app and shows the card in the middle of the screen
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // hides the "DEBUG" label
      home: Scaffold(
        body: Center(
          child: ProfileCard(), // our card widget
        ),
      ),
    );
  }
}

// A Stateless widget: it shows fixed content and never changes
class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  // Makes one white box that shows a label such as "Age"
  Widget _infoBox(String label) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(label),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.deepPurple, // Bonus: was Colors.blue
        borderRadius: BorderRadius.circular(16), // rounded corners
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min, // shrink the column to fit its content
        children: [
          const Text(
            'Astha Baviskar',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'FI Production',
            style: TextStyle(color: Colors.white70),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, // spreads the items out evenly
            children: [
              _infoBox('18'),
              _infoBox('Nagpur'),
              _infoBox('2026'),
            ],
          ),
        ],
      ),
    );
  }
}