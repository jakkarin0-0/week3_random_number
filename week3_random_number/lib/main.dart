import 'package:flutter/material.dart';
import 'package:week3_random_number/random.dart';
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: RandomPage(),
      ),
    );
  }
}