import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue.shade300,
        appBar: AppBar(
          backgroundColor: Colors.blue.shade900,
          title: Center(
            child: Text(
              'The Magic 8 Ball - Ask Me Anything!!',
            ),
          ),
        ),
        body: MagicBall(),
      ),
    ),
  );
}

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  var ballNumber = 5;
  void randomGuess() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                randomGuess();
              },
              child: Image.asset(
                "images/ball$ballNumber.png",
              ),
            ),
          )
        ],
      ),
    );
  }
}
