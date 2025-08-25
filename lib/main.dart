import 'package:flutter/material.dart';
import 'package:quiz_app/Detail%20_Screen.dart';
import 'package:quiz_app/quiz_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz App',
      home: const DetailScreen(),
    );
  }
}


