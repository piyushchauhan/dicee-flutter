import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
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

  int leftDiceNum = 4;
  int rightDiceNum = 6;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$leftDiceNum.png'),
              onPressed: (){
                print('Left Pressed');
                setState(() {
                  leftDiceNum = Random().nextInt(6)+1;
                  rightDiceNum = Random().nextInt(6) + 1;
                  print('left dice is $leftDiceNum');
                });
              },
            ),
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
              child: Image.asset('images/dice$rightDiceNum.png'),
              onPressed: () {
                setState(() {
                  leftDiceNum = Random().nextInt(6)+1;
                  rightDiceNum = Random().nextInt(6) + 1;
                  print('Right is $rightDiceNum');
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

