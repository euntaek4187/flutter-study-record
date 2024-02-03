import 'package:flutter/material.dart';
import 'package:toonflix/screens/pompdoros_home_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            color: Color(0xFF232B55),
          ),
        ),
        cardColor: const Color(0xFFF4EDDB),
        colorScheme: Theme.of(context).colorScheme.copyWith(
              background: const Color(0xFFE7626C),
            ),
      ),
      home: const Scaffold(
        body: HomeScreen(),
      ),
    );
  }
}