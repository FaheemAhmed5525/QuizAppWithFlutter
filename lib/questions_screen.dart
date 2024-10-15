import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuizScreenState();
  }
}

class _QuizScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Question is ...",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                  fontWeight: FontWeight.w500)),
          SizedBox(height: 32),
          AnswerButton(
            answerText: "answer text1", 
            onTap: () {}
          ),
          AnswerButton(
            answerText: "answer text", 
            onTap: () {}
          ),
          AnswerButton(
            answerText: "answer text3", 
            onTap: () {}
          ),
          AnswerButton(
            answerText: "answer text4", 
            onTap: () {}
          )
        ],
      ),
    );
  }
}
