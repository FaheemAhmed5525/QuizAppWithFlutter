import 'package:flutter/material.dart';

import 'package:quiz_app/data/questions.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.chosenAnswers});

  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for(var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        "question_indes": i,
        "question": questions[i].text,
        "correct_answer": questions[1].answers[0],
        "user_chosed": chosenAnswers[i]
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: Container(
          margin: EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text("You answer x out of Y question correctly!"),
              SizedBox(height: 30),
              Text("List of questions..."),
              SizedBox(
                height: 30,
              ),
              OutlinedButton.icon(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                    foregroundColor: Color.fromARGB(255, 7, 81, 7)),
                icon: const Icon(Icons.u_turn_left_rounded),
                label: const Text("Restart Quiz"),
              ),
            ],
          ),
        )
      );
  }
}
