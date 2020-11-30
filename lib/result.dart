import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetQuiz;
  final int questionIndex;
  Result(this.totalScore, this.resetQuiz, this.questionIndex);

  String get finalResult {
    int total_marks = questionIndex * 10;

    String result;
    if (totalScore == total_marks) {
      result =
          'Congratulations, You answered all the questions correctly Your total marks is: \n$totalScore';
    } else if (totalScore == total_marks - 10) {
      result = 'Excellent, Your total score was: \n $totalScore';
    } else if (totalScore == total_marks - 20) {
      result = 'Very good, Your total score was: \n $totalScore';
    } else {
      result =
          'Hmmm...You only got $totalScore marks, need to work a bit hard';
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Text(
              finalResult,
              style: TextStyle(fontSize: 37, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            FlatButton(
              onPressed: resetQuiz,
              child: Text('Restart Quiz'),
              textColor: Colors.blueAccent,
            ),
          ],
        ),
      ),
    );
  }
}
