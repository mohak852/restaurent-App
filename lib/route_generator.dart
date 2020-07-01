import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaruentflutter_app/pages/Login.dart';
import 'package:restaruentflutter_app/pages/categories/dessert.dart';
import 'package:restaruentflutter_app/pages/categories/indian.dart';
import 'package:restaruentflutter_app/pages/categories/italian.dart';
import 'package:restaruentflutter_app/pages/categories/south_indian.dart';
import 'package:restaruentflutter_app/pages/main_page.dart';
import 'package:restaruentflutter_app/pages/onboarding/FourPage.dart';
import 'package:restaruentflutter_app/pages/onboarding/first_page.dart';
import 'package:restaruentflutter_app/pages/onboarding/second_page.dart';
import 'package:restaruentflutter_app/pages/onboarding/third_page.dart';
import 'package:restaruentflutter_app/pages/splash.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => SplashScreen());
        case '/HomePage':
        return MaterialPageRoute(builder: (_) => HomePage());
        case '/FirstOn':
        return MaterialPageRoute(builder: (_) => FirstOn());
        case '/SecondOn' :
        return MaterialPageRoute(builder: (_)=>SecondOn() ); 
        case '/ThirdPage' :
        return MaterialPageRoute(builder: (_)=>ThirdPage() ); 
        case '/FourOn' :
        return MaterialPageRoute(builder: (_)=>FourOn() ); 
        case '/Italian' :
        return MaterialPageRoute(builder: (_)=>Italian() ); 
        case '/Indian' :
        return MaterialPageRoute(builder: (_)=>Indian() ); 
        case '/SouthIndian' :
        return MaterialPageRoute(builder: (_)=>SouthIndian() ); 
        case '/MainPage' :
        return MaterialPageRoute(builder: (_)=>MainPage() );  
        case '/LoginPage' :
        return MaterialPageRoute(builder: (_)=>LoginPage() );  
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
         
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
