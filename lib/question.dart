import 'package:flutter/widgets.dart';

class Question extends StatelessWidget {
  final String
      questionText; //adding final as when data is received in constructor it's value will be saved in questionText
  //and value will not change.
  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10.0), //EdgeInsets is a constructor with some predefined values
      child:Text(
      questionText,
      textAlign: TextAlign.center, //TextAlign is a predefined constructor with some predefined values
      style: TextStyle(
          fontSize: 28,
          color: Color.fromARGB(230, 66, 165, 290),
          fontStyle: FontStyle.italic,//FontStyle is a constructor with some predefined values
          ),
    ),
    );
  }
}




