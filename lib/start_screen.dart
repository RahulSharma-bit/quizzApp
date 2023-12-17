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
          //   opacity: 0.5,
          //   child: Image.asset(
          //     'images/quiz-logo.png',
          //     width: 300,
          //   ),
          // ),

          Image.asset(
            'images/quiz-logo.png',
            color: const Color.fromARGB(158, 127, 132, 63),
            width: 300,
          ),
          const SizedBox(height: 20),
          const Text(
            'Learn Flutter the Fun way! ',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          const SizedBox(height: 20),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quizz'),
          ),
        ],
      ),
    );
  }
}
