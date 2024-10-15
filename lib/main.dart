import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 230, 234, 253),
                const Color.fromARGB(255, 88, 40, 191)
                ],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
            ),
          ),
          child: StartScreen(),
        ),
      ),
    ),
  );
}
