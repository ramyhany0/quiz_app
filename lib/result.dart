import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';

class Result extends StatelessWidget {
  const Result(this.selectedAnswers, {super.key});
  final List<String> selectedAnswers;
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
    return Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "You Answer 3 out of 6 Questions Correctly!",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 30,
          ),
          ...getSummaryData().map((e) => Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.green.shade100,
                        radius: 16,
                        child:
                            Text(((e['question_index'] as int) + 1).toString()),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              e['question'].toString(),
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              e['user_answer'].toString(),
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              e['correct_answer'].toString(),
                              style: const TextStyle(color: Colors.greenAccent),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                ],
              )),
          const SizedBox(
            height: 30,
          ),
          TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.arrow_back_ios_new_rounded),
              label: const Text(
                "Restart Quiz!",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ))
        ],
      ),
    );
  }
}
