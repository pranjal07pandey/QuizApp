import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final int questionIndex;
  final Function buttonClicked;
  final List<Map<String, Object>> questions;

  Quiz({this.questionIndex, this.questions, this.buttonClicked});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText']),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(()=>buttonClicked(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
