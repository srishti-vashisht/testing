import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

final Function selectHandler;

  Answer(this.selectHandler);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      width: double.infinity,
      child:RaisedButton(
              onPressed: selectHandler,  // pointer to function selecthandler
              child: Text('Answer 1'), 
            ),
      
    );
  }
}