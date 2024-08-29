import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/models/answer_button.dart';

class Question extends StatefulWidget {
  const Question({super.key});

  @override
  State<Question> createState() => _QuestionsState();
}

class _QuestionsState extends State<Question> {
  var currenQuestionIndex = 0;
  void answerQuestion() {
    setState(() {
      currenQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currenQuestion = questions[currenQuestionIndex];
    return Container(
      margin: const EdgeInsets.all(10),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            currenQuestion.text,
            style: GoogleFonts.chivo(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 40,
          ),
          ...currenQuestion.getShuffledAnswer().map(
            (e) {
              return Container(
                  margin: const EdgeInsets.all(10),
                  child: AnswerButton(answerText: e, onPressed: () {}));
            },
          ),
        ],
      ),
    );
  }
}
