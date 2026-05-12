import 'package:adivinha_number/screens/start_game.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StartGame(),
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
    );
  }
}