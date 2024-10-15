import 'package:flutter/material.dart';



class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [

          // Opacity(
          //   opacity: 0.65,
          //   child: Image.asset(
          //     'assets/images/quiz-logo.png', 
          //     width: 300
          //   ),
          // ),

          Image.asset(
            'assets/images/quiz-logo.png', 
            width: 300,
            color: const Color.fromARGB(155, 235, 218, 29),
          ),

          const SizedBox(
            height: 100,
          ),

          const Text(
            "Click 'Start quiz' button to get started",

            style: TextStyle(
              color: Color.fromARGB(255, 7, 81, 7),
              fontSize: 28,
            ),
            
          ),

          const SizedBox(
            height: 100,
          ),

          OutlinedButton.icon (
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Color.fromARGB(255, 7, 81, 7)
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text("Start Quiz"),
          ),

        ],
      ),
    );
  }
}
