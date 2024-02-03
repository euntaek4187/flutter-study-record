import 'package:flutter/material.dart';
import 'package:toonflix/screens/toonflix_home_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ToonflixHomeScreen(),
      ),
    );
  }
}
