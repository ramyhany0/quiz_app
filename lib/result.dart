import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result(this.selectedAnswers, {super.key});
  final List<String> selectedAnswers;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            "You Answer 3 out of 6 Questions Correctly!",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 30,
          ),
          const Text("......."),
          const SizedBox(
            height: 30,
          ),
          TextButton(onPressed: () {}, child: Text("Restart Quiz!"))
        ],
      ),
    );
  }
}
