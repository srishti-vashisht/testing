import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler); //positional argument

  String get resultPhrase {
    //getters

    String resultText;

    if (resultScore <= 6) {
      resultText = 'You are Strange';
    } else if (resultScore <= 12) {
      resultText = 'You are Ok';
    } else if (resultScore <= 18) {
      resultText = 'You are good';
    } else {
      resultText = 'You are awesome';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          FlatButton(
            onPressed: resetHandler, 
            child: Text('Start again'),
            textColor: Colors.blue,
            ),
        ],
      ),
    );
  }
}
