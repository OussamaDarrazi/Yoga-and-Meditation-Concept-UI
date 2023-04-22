import 'package:flutter/material.dart';
import 'screens/top_gurus_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Yoga and Meditation App',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        fontFamily: "Plus Jakarta Sans",
        textTheme: const TextTheme(
          displayLarge: TextStyle(
              fontSize: 35, color: Colors.white, fontWeight: FontWeight.normal),
        ),
      ),
      home: const TopGurusScreen(),
    );
  }
}

