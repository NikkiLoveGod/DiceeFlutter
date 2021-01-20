import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(Magic8BallPage());

class Magic8BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Magic 8 Ball'),
          backgroundColor: Colors.blue.shade900,
        ),
        backgroundColor: Colors.blue,
        body: Center(
          child: Magic8Ball(),
        ),
      ),
    );
  }
}

class Magic8Ball extends StatefulWidget {
  @override
  _Magic8BallState createState() => _Magic8BallState();
}

class _Magic8BallState extends State<Magic8Ball> {
  int ballQuestionNum = 1;

  void changeQuestion() {
    setState(() {
      ballQuestionNum = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: changeQuestion,
      child: Image.asset('images/ball$ballQuestionNum.png'),
    );
  }
}
