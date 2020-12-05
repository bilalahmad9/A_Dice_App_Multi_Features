import 'package:diceeapp/FirstPage.dart';
import 'package:diceeapp/TwoLevel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'dart:async';


void main() => runApp(SplashScreen());

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MySplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MySplashScreen extends StatefulWidget {
  @override
  _MySplashScreenState createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {

  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 5), ()=>Navigator.push(context, MaterialPageRoute(builder: (context) => MyLevel())));

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset('images/mypic.jpg', height: 150.0, width: 150,),
          SizedBox(height: 20,),
          Text('My Name is Bilal Ahmad', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0, color: Colors.white),),
          SizedBox(height: 30,),
          Text("Registration No : SP17-BCS-009",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.white),),

          SizedBox( height: 30.0),

          SpinKitRipple(color: Colors.blue),
        ],
      ),
    );
  }
}
