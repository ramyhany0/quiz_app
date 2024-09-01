import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';

import 'models/summaryPage.dart';

class Result extends StatelessWidget {
  const Result(this.selectedAnswers, this.restart, {super.key});
  final List<String> selectedAnswers;
  final void Function() restart;
  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < selectedAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answer[0],
        'user_answer': selectedAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    var numofcorrectanswer = 0;
    var summaryData = getSummaryData();
    for (var i = 0; i < summaryData.length; i++) {
      if (summaryData[i]['user_answer'] == summaryData[i]['correct_answer']) {
        numofcorrectanswer++;
      }
    }
    return Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "You Answer $numofcorrectanswer out of ${questions.length} Questions Correctly!",
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 30,
          ),
          Summarypage(summaryData),
          const SizedBox(
            height: 30,
          ),
          TextButton.icon(
              onPressed: restart,
              icon: const Icon(Icons.restart_alt_outlined),
              label: const Text(
                "Restart Quiz!",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ))
        ],
      ),
    );
  }
}
