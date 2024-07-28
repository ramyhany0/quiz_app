import 'package:flutter/material.dart';
import 'package:quiz_app/models/answer_button.dart';

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
          AnswerButton("Answer 01", () {}),
          const SizedBox(
            height: 40,
          ),
          AnswerButton("Answer 02", () {}),
          const SizedBox(
            height: 40,
          ),
          AnswerButton("Answer 03", () {}),
          const SizedBox(
            height: 40,
          ),
          AnswerButton("Answer 04", () {}),
        ],
      ),
    );
  }
}
