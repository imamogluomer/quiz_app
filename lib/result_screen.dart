import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key, required this.chosenAnswers, required this.onRestart});

  final List<String> chosenAnswers;
  final void Function() onRestart;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': questions[i].text,
          'correct_answer': questions[i].answers[0],
          'user_answer': chosenAnswers[i]
        },
      );
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrenctQuestions = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;
    const questionPoint = 5;
    final finalPoint = questionPoint * numCorrenctQuestions;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answered $numCorrenctQuestions out of $numTotalQuestions aquestions correctly!',
              style: GoogleFonts.lato(
                color: const Color.fromARGB(200, 255, 255, 255),
                fontSize: 14,
                fontWeight: FontWeight.w900,
                shadows: <Shadow>[
                  const Shadow(
                    offset: Offset(2.0, 2.0),
                    blurRadius: 5.0,
                    color: Color.fromARGB(56, 0, 0, 0),
                  ),
                ],
              ),
            ),
            Text(
              'You received $finalPoint by answering $numCorrenctQuestions questions correctly!',
              style: GoogleFonts.lato(
                color: const Color.fromARGB(199, 255, 255, 255),
                fontSize: 13,
                fontWeight: FontWeight.w900,
                shadows: <Shadow>[
                  const Shadow(
                    offset: Offset(2.0, 2.0),
                    blurRadius: 5.0,
                    color: Color.fromARGB(56, 0, 0, 0),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            QuestionsSummary(getSummaryData()),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton.icon(
              onPressed: onRestart,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(175, 12, 11, 11),
                foregroundColor: const Color.fromARGB(177, 255, 255, 255),
              ),
              icon: const Icon(
                Icons.refresh,
                size: 17,
              ),
              label: Text(
                'Restart!',
                style: GoogleFonts.lato(
                    color: const Color.fromARGB(177, 255, 255, 255),
                    fontWeight: FontWeight.w900),
              ),
            )
          ],
        ),
      ),
    );
  }
}
