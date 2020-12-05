import 'dart:math';
import 'package:diceeapp/HardLevel.dart';
import 'mainDrawer.dart';
import 'main.dart';
import 'package:flutter/material.dart';
import 'FirstPage.dart';
import 'TwoLevel.dart';
import 'HardLevel.dart';

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

  var imageArray = ['dice1.png', 'dice2.png', 'dice3.png', 'dice4.png', 'dice5.png', 'dice6.png'];

  int correctImage1 = 0;
  int correctImage2 = 1;
  int correctImage3 = 2;
  int correctImage4 = 3;
  int correctImage5= 4;
  int correctImage6 = 5;

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
                    'images/'+imageArray[correctImage1],
                    height: 50,
                    width: 50,
                  ),
                  onPressed:() {
                    showAlertDialog(context);
                  },
                ),
                FlatButton(
                  child: Image.asset(
                    'images/'+imageArray[correctImage2],
                    height: 50,
                    width: 50,

                  ),
                  onPressed:() {
                    showAlertDialog(context);
                  },
                ),
                FlatButton(
                  child: Image.asset(
                    'images/'+imageArray[correctImage3],
                    height: 50,
                    width: 50,
                  ),
                  onPressed:() {
                    showAlertDialog(context);
                  },
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                FlatButton(
                  child: Image.asset(
                    'images/'+imageArray[correctImage4],
                    height: 50,
                    width: 50,
                  ),
                  onPressed:() {
                    showAlertDialog(context);
                  },
                ),
                FlatButton(
                  child: Image.asset(
                    'images/'+imageArray[correctImage5],
                    height: 50,
                    width: 50,
                  ),
                  onPressed:() {
                    showAlertDialog(context);
                  },
                ),
                FlatButton(
                  child: Image.asset(
                    'images/'+imageArray[correctImage6],
                    height: 50,
                    width: 50,
                  ),
                  onPressed:() {
                    showAlertDialog(context);
                  },
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

  showAlertDialog(BuildContext context) {
    if (correctImage2 == correctImage2) {
      AlertDialog alert = AlertDialog(
        title: Text("Congratulation you pickup the right Dice", style: TextStyle(
            fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.green),),

      );

      showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        },
      );
    }
    else
      {
        setState(() {
          Navigator.push(context, MaterialPageRoute(builder: (context) => HardLevel()));
        });
      }
  }
}
