import 'dart:math';
import 'package:flutter/material.dart';
import 'main.dart';
import 'TwoLevel.dart';
import 'mainDrawer.dart';

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

  var imageArray = ['dice1.png', 'dice2.png', 'dice3.png', 'dice4.png', 'dice5.png', 'dice6.png'];
//var random = new Random();
  int randomIntForDiceOne = Random().nextInt(6);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(backgroundColor: Colors.blue, title: Text('Hard Level', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 30.0),),),
        drawer: Drawer(
          child: MainDrawer(),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(21, 50, 21, 50),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Image.asset('images/'+imageArray[randomIntForDiceOne], height: 150, width: 150,),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: RaisedButton(onPressed: changeImage,
                  child: Text('Roll Dice'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: RaisedButton(onPressed: MainMenu,
                  child: Text('Exit Game'),
                ),
              ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: RaisedButton(onPressed: HomeScreen,
              child: Text('Go Home'),
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
    });
  }

  void MainMenu() {
    setState(() {
      Navigator.push(context, MaterialPageRoute(builder: (context) => MyLevel()));
    });
  }

  void HomeScreen() {
    setState(() {
      Navigator.push(context, MaterialPageRoute(builder: (context) => SplashScreen()));
    });
  }
}