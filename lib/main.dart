import 'package:flutter/material.dart';
import './result.dart';
import './quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppstate();
  }
}

class MyAppstate extends State<MyApp> {
  var questionIndex = 0;
  var totalScore = 0;

  void buttonClicked(int score) {
    totalScore += score;

    setState(() {
      questionIndex += 1;
    });
  }

  void resetQuiz() {
    setState(() {
      questionIndex = 0;
      totalScore = 0;
    });
  }

  static const questions = [
    {
      'questionText': 'What is the capital city of Kenya?',
      'answers': [
        {'text': 'Nairobi', 'score': 10},
        {'text': 'Berlin', 'score': 0},
        {'text': 'Kathmandu', 'score': 0},
        {'text': 'Cape town', 'score': 0},
      ],
    },
    {
      'questionText': 'Name the youngest country among them.',
      'answers': [
        {'text': 'Nepal', 'score': 0},
        {'text': 'China', 'score': 0},
        {'text': 'India', 'score': 0},
        {'text': 'USA', 'score': 10},
      ],
    },
    {
      'questionText': 'Capital of Mongolia?',
      'answers': [
        {'text': 'Pyung Yang', 'score': 0},
        {'text': 'Seoul', 'score': 0},
        {'text': 'Tokyo', 'score': 0},
        {'text': 'Ullanbatar', 'score': 10},
      ],
    },
    {
      'questionText': 'Who is the Champoins league all time top scorer',
      'answers': [
        {'text': 'Lionel Mess', 'score': 0},
        {'text': 'Cristiano Ronaldo', 'score': 10},
        {'text': 'Raul', 'score': 0},
        {'text': 'Sergio Aguero', 'score': 0},
      ],
    },
    {
      'questionText': 'Who was the first person to go to the space',
      'answers': [
        {'text': 'Neil Armstrong', 'score': 0},
        {'text': 'Laika', 'score': 0},
        {'text': 'Uri Gagrin', 'score': 10},
        {'text': 'Carl Sagan', 'score': 0},
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('This is the quiz app'),
          ),
          body: questionIndex < questions.length
              ? Quiz(
                  buttonClicked: buttonClicked,
                  questionIndex: questionIndex,
                  questions: questions)
              : Result(totalScore, resetQuiz, questionIndex)),
    );
  }
}
