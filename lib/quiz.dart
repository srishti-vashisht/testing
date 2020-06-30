import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz(
      {@required this.questions,
      @required this.answerQuestion,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      //ternary operator
      children: [
        //  Text(questions[_questionIndex]), // now in different file , question.dart
        Question(
          //questions[_questionIndex],//accessing question through index , only question was accessed not the value,yields map for index 0,yields first map for index 0 , secondmap for index 1 n so on // check once
          questions[questionIndex]['questionText'],
        ),
        //  RaisedButton(
        //    onPressed: _answerQuestion, // named function
        //    child: Text('Answer 1'),
        //  ),
        //  RaisedButton(
        //    onPressed: ()=> print('Answer 2 chosen'), // anonymous function
        //   child: Text('Answer 2'),
        //  ),
        // RaisedButton(
        //   onPressed: ()
        //   {                                //anonymous function
        //...
        //     print('Answer 3 chosen');
        //   },
        //   child: Text('Answer 3'),
        // Answer(_answerQuestion), //pointer to answerQuestion function
        // Answer(_answerQuestion),
        //Answer(_answerQuestion),

       // ...(questions[_questionIndex]['answers'] as List<String>)
          ...(questions[questionIndex]['answers'] as List<Map<String,Object>>)
            .map((answer) //... - spread operator
                {
          return Answer(()=>answerQuestion(answer['score']), answer['text']);
        }).toList() //map closed
      ],
    );
  }
}
