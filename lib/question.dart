import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/models/answer_button.dart';

class Question extends StatefulWidget {
  const Question({super.key});

  @override
  State<Question> createState() => _QuestionsState();
}

class _QuestionsState extends State<Question> {
  final currenQuestion = questions[0];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            currenQuestion.text,
            style: const TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 40,
          ),
          ...currenQuestion.answer.map(
            (e) {
              return Container(
                  margin: const EdgeInsets.all(20),
                  child: AnswerButton(answerText: e, onPressed: () {}));
            },
          ),
        ],
      ),
    );
  }
}
