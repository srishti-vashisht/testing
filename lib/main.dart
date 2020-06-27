import 'package:flutter/material.dart';
import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  
  @override
  State<StatefulWidget> createState(){
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> //adding _ with class makes class as private
{

var _questionIndex = 0; //adding _ makes variable as private 

    void _answerQuestion(){ //adding _ makes method as private 
      setState(() {
         _questionIndex = _questionIndex + 1;
        });
   
    print(_questionIndex);
  }
@override
  
  Widget build(BuildContext context) {
    
    

    var questions = [
      'what\'s your favourite colour' , 
      'what\'s your favourite animal'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello All'),
        ),
        body: Column(
          children: [
          //  Text(questions[_questionIndex]), // now in different file , question.dart
              Question(
                  questions[_questionIndex],
              ),
            RaisedButton(
              onPressed: _answerQuestion, // named function
              child: Text('Answer 1'), 
            ),
            RaisedButton(
              onPressed: ()=> print('Answer 2 chosen'), // anonymous function
              child: Text('Answer 2'),
            ),
            RaisedButton(
              onPressed: ()
              {                                //anonymous function  
                //...
                print('Answer 3 chosen'); 
              },
              child: Text('Answer 3'),
            ),
          ],
        ),
      ),
    );
  }
}
