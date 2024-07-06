import 'package:flutter/material.dart';

class Question extends StatefulWidget {
  const Question({super.key});

  @override
  State<Question> createState() => _QuestionsState();
}

class _QuestionsState extends State<Question> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Quesyion1...',
          ),
          const SizedBox(
            height: 40,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.grey.shade800,
            ),
            onPressed: () {},
            child: const Text(
              "Answer",
              style: TextStyle(fontSize: 25),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.grey.shade800,
            ),
            onPressed: () {},
            child: const Text(
              "Answer",
              style: TextStyle(fontSize: 25),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.grey.shade800,
            ),
            onPressed: () {},
            child: const Text(
              "Answer",
              style: TextStyle(fontSize: 25),
            ),
          ),
        ],
      ),
    );
  }
}
