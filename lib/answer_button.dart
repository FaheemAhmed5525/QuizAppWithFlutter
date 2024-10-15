import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key, 
    required this.answerText, 
    required this.onTap
  });

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 36),
        backgroundColor: const Color.fromARGB(255, 121, 119, 239),
        foregroundColor: const Color.fromARGB(255, 65, 9, 47),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
      ),
      child: Text(
        answerText,
        style: TextStyle(
          fontSize: 32,
        )),
    );
  }
}
