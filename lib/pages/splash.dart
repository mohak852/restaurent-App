import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _firstTime;
  var _duration = new Duration(seconds: 3);
 _loadFirstSaved() async {
    var _duration = new Duration(milliseconds: 1500);

    SharedPreferences prefs = await SharedPreferences.getInstance();
    _firstTime = (prefs.getBool('first_run') ?? true);
    return new Timer(_duration, () {
      if (_firstTime == true) {
        prefs.setBool('first_run', false);
        Navigator.of(context).pushReplacementNamed('/LoginPage');
        //firstRun();
      } else {
       Navigator.of(context).pushReplacementNamed('/MainPage');
      }
    });
  }
  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/LoginPage');
  }
  void homePage() {
    Navigator.of(context).pushReplacementNamed('/HomePage');
  }
  @override
  void initState() {
    super.initState();
   _loadFirstSaved();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffB9CCFC),
      body: Center(
        child: Text("CATNYX",style: TextStyle(
          color: Color(0xff302F36),
          fontFamily: 'Raleway',
          fontSize: 50.0,
          fontWeight: FontWeight.w500
        ),),
      ),
    );
  }
}