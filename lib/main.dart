import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'saveIt',
      home: Scaffold(
        appBar: AppBar(
          title: Text('SaveIt'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children : [
        RaisedButton(
          onPressed: (){},
          child: Text('Add Bill'),
        ),
        RaisedButton(
          onPressed: (){},
          child: Text('aaaaa'),
          
        )
        ],
        ),
      ),
    );
  }
}
