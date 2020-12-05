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
  var left_image = Random().nextInt(5);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  left_image = 5;
                });

                print('Value of Variable $left_image');
              },
              child: Image.asset('images/dice$left_image.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                print('Dice 02');
              },
            
            ),
          ),
        ],
      ),
    );
  }
}
