import 'package:flutter/material.dart';
import 'home.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontSize: 72,
            color: Colors.green,
          ),
        ),
      ),
      home: const Home(),
    );
  }
}

class Toto extends StatelessWidget {
  const Toto({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const Placeholder();
  }
}