import 'package:quiz_app/models/quiz_questions.dart';

const questions = [
  QuizQuestions('What are the main building blocks of Flutter UIs?', [
    'Widgets',
    'Components',
    'Blocks',
    'Functions',
  ]),
  QuizQuestions(
      'Which widget is used for creating a scrollable list of items in Flutter?',
      [
        'ListView',
        'Column',
        'Row',
        'Container',
      ]),
  QuizQuestions('How do you declare a StatefulWidget in Flutter?', [
    'class MyWidget extends StatefulWidget',
    'class MyWidget extends StatelessWidget',
    'class MyWidget extends Widget',
    'class MyWidget extends State',
  ]),
  QuizQuestions('Which method is mandatory to implement in a StatefulWidget?', [
    'createState',
    'build',
    'initState',
    'setState',
  ]),
  QuizQuestions(
      'What is the purpose of the pubspec.yaml file in a Flutter project?', [
    'To manage dependencies and project metadata',
    'To define app routing',
    'To handle state management',
    'To specify widget properties',
  ]),
  QuizQuestions(
      'Which widget would you use for creating an overlay in Flutter?', [
    'Stack',
    'Row',
    'Column',
    'Container',
  ])
];
