import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home(this.switchScreen, {super.key});
  final void Function() switchScreen;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            color: Colors.blue.shade200,
            width: 300,
          ),
          const SizedBox(
            height: 80,
          ),
          const Text(
            "Learn Flutter",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.grey.shade800,
            ),
            onPressed: switchScreen,
            icon: const Icon(Icons.arrow_right_alt_outlined),
            label: const Text(
              "Start Quiz",
              style: TextStyle(fontSize: 25),
            ),
          )
        ],
      ),
    );
  }
}
