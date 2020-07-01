import 'package:flutter/material.dart';
import 'package:restaruentflutter_app/constant/constant.dart';

class FourOn extends StatefulWidget {
  @override
  _FourOnState createState() => _FourOnState();
}

class _FourOnState extends State<FourOn> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Color(0xffB9CCFC),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                  onTap: ()=>Navigator.of(context).pushReplacementNamed('/MainPage'),
                  child: Container(
                      height: 40.0,
                      width: 150.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(child: Text("Get Started",style: KbottomAppBar,)))),
            ],
          ),
        ),
      ),
      backgroundColor: Color(0xffB9CCFC),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 12.0),
          child: Stack(
            children: <Widget>[
              SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text("Social Distancing at",style: kHeadingLight,),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text("Restaurants",style: kHeadingHard,),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          height: MediaQuery.of(context).size.height/3,
                          width: MediaQuery.of(context).size.height/4+50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(56.0),bottomLeft: Radius.circular(56.0)),
                              image: DecorationImage(image: AssetImage('assets/WhatsApp Image 2020-06-24 at 2.47.23 AM.jpeg'))
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 57.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height: MediaQuery.of(context).size.height/3,
                          width: MediaQuery.of(context).size.height/4+50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(topRight: Radius.circular(56.0),bottomRight: Radius.circular(56.0)),
                              image: DecorationImage(
                                fit: BoxFit.contain,
                                image: AssetImage('assets/chair1.jpeg'),
                              )
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
