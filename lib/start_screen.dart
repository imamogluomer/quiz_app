import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(
            height: 80,
          ),
          Text(
            'General Knowledge Quiz!',
            style: GoogleFonts.lato(
                color: const Color.fromARGB(174, 255, 255, 255),
                fontWeight: FontWeight.bold,
                fontSize: 24),
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton.icon(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(
                  foregroundColor: const Color.fromARGB(177, 255, 255, 255),
                  backgroundColor: const Color.fromARGB(175, 12, 11, 11)),
              icon: const Icon(
                Icons.arrow_right_alt,
                size: 30,
              ),
              label: const Text(
                'Start Quiz',
                style: TextStyle(color: Color.fromARGB(177, 255, 255, 255)),
              ))
        ],
      ),
    );
  }
}
