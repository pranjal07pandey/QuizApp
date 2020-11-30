import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function buttonClicked;
  final String answerString;

  Answer(this.buttonClicked, this.answerString);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(onPressed: buttonClicked,
      textColor: Colors.white,
      color: Colors.orange,
      child: Text(answerString),

      ),
      width: double.infinity,
    );
  }
}
