import 'dart:math';
import 'package:flutter/material.dart';
import 'main.dart';
import 'TwoLevel.dart';
import 'mainDrawer.dart';
import 'guess.dart';

void main() => runApp(HardLevel());

class HardLevel extends StatelessWidget {
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage();

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var imageArray = [
    'dice1.png',
    'dice2.png',
    'dice3.png',
    'dice4.png',
    'dice5.png',
    'dice6.png'
  ];

//var random = new Random();
  int randomIntForDiceOne = Random().nextInt(6);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(backgroundColor: Colors.blue,
          title: Text('Hard Level', style: TextStyle(color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30.0),),),
        drawer: Drawer(
          child: MainDrawer(),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 200),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Image.asset(
                    'images/' + imageArray[randomIntForDiceOne], height: 120,
                    width: 120,),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: RaisedButton(
                  child: Text('Roll Dice'),
                  onPressed: changeImage,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: RaisedButton(onPressed: MainMenu, color: Colors.red,
                  child: Text('Exit Game',),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: RaisedButton(onPressed: HomeScreen, color: Colors.green,
                  child: Text('Go Home',),
                ),
              ),
            ],
          ),
        )
    );
  }

  void changeImage() {
    setState(() {
      randomIntForDiceOne = Random().nextInt(6);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => GuessScreen()));
    });
  }

  void MainMenu() {
    setState(() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => MyLevel()));
    });
  }

  void HomeScreen() {
    setState(() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => SplashScreen()));
    });
  }
}
