import 'package:flutter/material.dart';

class homeApp extends StatefulWidget {
  const homeApp({super.key});

  @override
  State<homeApp> createState() => _homeAppState();
}

class _homeAppState extends State<homeApp> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/quiz-logo.png",
          width: 300,
        )
      ],
    );
  }
}
