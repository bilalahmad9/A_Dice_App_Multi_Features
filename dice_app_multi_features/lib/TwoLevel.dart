import 'dart:math';
import 'package:diceeapp/FirstPage.dart';
import 'package:diceeapp/HardLevel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'mainDrawer.dart';

void main() => runApp(MyLevel());

class MyLevel extends StatelessWidget {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(backgroundColor: Colors.blue, title: Text('Navigation Bar', style: TextStyle(color: Colors.black),),),
        drawer: Drawer(
          child: MainDrawer(),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(21, 50, 21, 50),
          child: Column(
            children: <Widget>[
               Padding(
                padding: const EdgeInsets.only(left: 100),
                child: RaisedButton(onPressed: changeLevel1, color: Colors.green,
                child: Text('Simple Level'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 100),
                child: RaisedButton(onPressed: changeLevel2, color: Colors.red,
                  child: Text('Hard Level'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 100),
                child: RaisedButton(onPressed: HomeScreen,
                  child: Text('Go Home'),
                ),
              ),

            ],
          ),
        )
    );
  }

void changeLevel1() {
  setState(() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
  });
}

  void changeLevel2() {
    setState(() {
      Navigator.push(context, MaterialPageRoute(builder: (context) => HardLevel()));
    });
  }

  void HomeScreen() {
    setState(() {
      Navigator.push(context, MaterialPageRoute(builder: (context) => SplashScreen()));
    });
  }
}