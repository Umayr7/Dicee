import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    DicePage(),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftButton = 1;
  int rightButton = 1;

  void changeDice() {
    setState(() {
      leftButton = Random().nextInt(6) + 1;
      rightButton = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.red,
        ),
        body: SafeArea(
          child: Center(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      changeDice();
                    },
                    child: Image.asset(
                      'images/dice$leftButton.png',
                    ),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      changeDice();
                    },
                    child: Image.asset(
                      'images/dice$rightButton.png',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
