import 'package:flutter/material.dart';
import 'package:quiz_app/home.dart';

void main(List<String> args) {
  runApp(QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
                gradient:
                    LinearGradient(colors: [Colors.blue, Colors.deepPurple])),
            child: const homeApp()),
      ),
    );
  }
}
