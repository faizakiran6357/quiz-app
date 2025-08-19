import 'package:flutter/material.dart';
import 'package:quiz_app/Home_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz_App',
      home: const DashboardScreen(),
    );
  }
}

