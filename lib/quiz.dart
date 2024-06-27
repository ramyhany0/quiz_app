import 'package:flutter/material.dart';
import 'package:quiz_app/home.dart';

class Quiz extends StatelessWidget {
  const Quiz({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.orangeAccent, Colors.blueAccent])),
            child: const homeApp()),
      ),
    );
  }
}
