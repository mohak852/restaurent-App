import 'package:flutter/material.dart';
import 'package:restaruentflutter_app/pages/categories/indian.dart';
import 'package:restaruentflutter_app/pages/categories/italian.dart';
import 'pages/Login.dart';
import 'pages/splash.dart';
import './pages/Signup_page.dart';
import 'pages/categories/dessert.dart';
import 'package:restaruentflutter_app/onboarding/FourPage.dart';
import 'package:restaruentflutter_app/onboarding/first_page.dart';
import 'package:restaruentflutter_app/onboarding/third_page.dart';

import 'onboarding/second_page.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/LoginPage': (BuildContext context)=>LoginPage(),
        '/SignUp': (BuildContext context)=>SignUp(),
        '/HomePage': (BuildContext context)=>HomePage(),
        '/FirstOn': (BuildContext context)=>FirstOn(),
        '/SecondOn': (BuildContext context)=>SecondOn(),
        '/ThirdPage': (BuildContext context)=>ThirdPage(),
        '/FourOn': (BuildContext context)=>FourOn(),
        '/Italian':(BuildContext context)=>Italian(),
        '/Indian': (BuildContext context)=>Indian(),
      },
      home: SplashScreen()
    );
  }
}