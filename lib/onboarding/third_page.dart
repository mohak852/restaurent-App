import 'package:flutter/material.dart';
import 'package:restaruentflutter_app/constant/constant.dart';

class ThirdPage extends StatefulWidget {
  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Color(0xffB9CCFC),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              InkWell(
                  onTap: ()=>Navigator.of(context).pushReplacementNamed('/HomePage'),
                  child: Container(
                      height: 40.0,
                      width: 70.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(child: Text("SKIP",style: KbottomAppBar,)))),
              InkWell(
                  onTap: ()=>Navigator.of(context).pushReplacementNamed('/FourOn'),
                  child: Container(
                      height: 40.0,
                      width: 70.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(child: Text("NEXT",style: KbottomAppBar,)))),
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
                        Text("Specialized",style: kHeadingLight,),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text("Staff",style: kHeadingHard,),
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
                              image: DecorationImage(image: AssetImage('assets/restaurant-staff-characters-include-chef-assistants-manager-waitress_48866-392.jpg'))
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
                                image: AssetImage('assets/left.jpg'),
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
