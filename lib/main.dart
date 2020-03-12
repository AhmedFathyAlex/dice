import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.blue,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDiceNumber = 1;
  var rightDiceNumber = 5;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  Toggle();
                });
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          SizedBox(
            width: 25,
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  Toggle();
                });
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }

  void Toggle() {
    rightDiceNumber = 1 + Random().nextInt(6);
    leftDiceNumber = 1 + Random().nextInt(6);
  }
}
