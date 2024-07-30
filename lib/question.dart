import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/models/answer_button.dart';

class Question extends StatefulWidget {
  const Question({super.key});

  @override
  State<Question> createState() => _QuestionsState();
}

class _QuestionsState extends State<Question> {
  final CurrenQuestion = questions[0];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            CurrenQuestion.text,
          ),
          const SizedBox(
            height: 40,
          ),
          AnswerButton(answerText: "Answer 01", onPressed: () {}),
          const SizedBox(
            height: 40,
          ),
          AnswerButton(answerText: "Answer 01", onPressed: () {}),
          const SizedBox(
            height: 40,
          ),
          AnswerButton(answerText: "Answer 01", onPressed: () {}),
          const SizedBox(
            height: 40,
          ),
          AnswerButton(answerText: "Answer 01", onPressed: () {}),
        ],
      ),
    );
  }
}
