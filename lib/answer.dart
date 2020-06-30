import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

final Function selectHandler;
final String answerText;

  Answer(this.selectHandler,this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      width: double.infinity,
      child:RaisedButton(
              color: Colors.blue,
              textColor: Colors.black,
              onPressed: selectHandler,  // pointer to function selecthandler  , takes function without arguments
              child: Text(answerText), 
            ),

    );
  }
}