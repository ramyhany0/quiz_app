import 'package:flutter/material.dart';

class Summarypage extends StatelessWidget {
  const Summarypage(this.SummaryData, {super.key});
  final List<Map<String, Object>> SummaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: [
            ...SummaryData.map((e) => Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundColor:
                              e['user_answer'] == e['correct_answer']
                                  ? Colors.green.shade400
                                  : Colors.red.shade400,
                          radius: 16,
                          child: Text(
                              ((e['question_index'] as int) + 1).toString()),
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
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
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
                                style:
                                    const TextStyle(color: Colors.greenAccent),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
