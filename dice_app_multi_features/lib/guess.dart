import 'dart:math';
import 'mainDrawer.dart';
import 'main.dart';
import 'package:flutter/material.dart';
import 'FirstPage.dart';
import 'TwoLevel.dart';

void main() => runApp(GuessScreen());

class GuessScreen extends StatelessWidget {
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
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Guess Screen',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30.0),
        ),
      ),
      drawer: Drawer(
        child: MainDrawer(),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(21, 50, 21, 50),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 60),
              child: Text(
                'Guess Image ',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.yellowAccent,
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                FlatButton(
                  child: Image.asset(
                    'images/dice1.png',
                    height: 50,
                    width: 50,
                  ),
                ),
                FlatButton(
                  child: Image.asset(
                    'images/dice2.png',
                    height: 50,
                    width: 50,
                  ),
                ),
                FlatButton(
                  child: Image.asset(
                    'images/dice3.png',
                    height: 50,
                    width: 50,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                FlatButton(
                  child: Image.asset(
                    'images/dice4.png',
                    height: 50,
                    width: 50,
                  ),
                ),
                FlatButton(
                  child: Image.asset(
                    'images/dice5.png',
                    height: 50,
                    width: 50,
                  ),
                ),
                FlatButton(
                  child: Image.asset(
                    'images/dice6.png',
                    height: 50,
                    width: 50,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: RaisedButton(
                onPressed: MainMenu,
                color: Colors.red,
                child: Text('Exit Game'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: RaisedButton(
                onPressed: HomeScreen,
                color: Colors.green,
                child: Text('Go Home'),
              ),
            ),
          ],
        ),
      ),
    );
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
