import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> //adding _ with class makes class as private
{
  final _questions = const [
    //static const question =[
    {
      //Map- manage data as key value pairs
      'questionText':
          'what\'s your favourite colour?', //questionText-Key , after : is value
      // 'answers': [  'Black', 'Red','Green','White'],    //answers - Key , after : colon is value
      'answers': [
        {'text': 'Black', 'Score ': 2},      //Map
        {'text:': 'Red', 'Score': 4},
        {'text': 'Green', 'Score': 6},
        {'text': 'White', 'Score': 8}
      ],
    },
    {
      'questionText': 'what\'s your favourite animal ?',
      'answers': [
        {'text': 'Rabbit', 'Score ': 9},
        {'text:': 'Snake', 'Score': 4},
        {'text': 'Elephant', 'Score': 6},
        {'text': 'Lion', 'Score': 10}
      ],
    },
    {
      'questionText': ' What\'s is your favourite season  ?',
      'answers': [
        {'text': 'Summer', 'Score ': 6},
        {'text:': 'Winter', 'Score': 10},
        {'text': 'Rain', 'Score': 9},
        {'text': 'Spring', 'Score': 8}
      ],
    },
  ];
  var _questionIndex = 0; //adding _ makes variable as private
  var  _totalScore = 0;

  void _resetQuiz(){               
    setState(() {                    //will re-trigger build method again and again ,maintaining the state
      var _questionIndex = 0;
      var  _totalScore = 0;
      
    });
     

  }
  
  void _answerQuestion(int score) {
    //adding _ makes method as private
   _totalScore+= score;

    setState(() {                         //re-trigger build method again n again,maintaining the state
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);

    // if (_questionIndex < questions.length) {
    //  print('More ques there');
    // } else {
    //   print('No more ques');
    // }
  }

  @override
  Widget build(BuildContext context) {
    // var dummy = const ['Hello'];
    //dummy.add('Srishti');   //not allow to add value if the value is const

    //questions= []; // doesn't work if questions is const,works when questions is var and values are const
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello All'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : Result(_totalScore,_resetQuiz),
      ),
    );
  }
}
