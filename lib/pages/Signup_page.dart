import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  Widget _TextFieldEmail(String text) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25.0,vertical: 5.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10.0),
            height: MediaQuery.of(context).size.height/12-10,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xffC9D4F1),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: TextField(
               cursorColor: Color(0xff999DAD),
              decoration: InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                prefixIcon: Icon(Icons.person,color: Colors.black,),
                labelText: text,
                labelStyle: TextStyle(
                  color: Color(0xff999DAD),
                  fontSize: 20.0,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _TextFieldPass(String text) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25.0,vertical: 5.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10.0),
            height: MediaQuery.of(context).size.height/12-10,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xffC9D4F1),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: TextField(
              cursorColor: Color(0xff999DAD),
              decoration: InputDecoration(
                
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                focusedErrorBorder: InputBorder.none,
                prefixIcon: Icon(Icons.lock,color: Colors.black,),
                labelText: text,
                labelStyle: TextStyle(
                  color: Color(0xff999DAD),
                  fontSize: 20.0,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          child: SingleChildScrollView(
                      child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/long-exposure-shot-of-ocean-1934846.jpg"),
                    )
                  ),
                ),
                    _TextFieldEmail("USERNAME"),
                    _TextFieldEmail("EMAIL ID"),
                    _TextFieldPass("PASSWORD"),
                    _TextFieldPass("CONFIRM PASSWORD"),
                    Container(
      padding: EdgeInsets.symmetric(horizontal: 65.0,vertical: 5.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10.0),
            height: MediaQuery.of(context).size.height/12-10,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xff7A4DD8),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Center(child: Text("SIGN UP",style: TextStyle(
                  color: Color(0xffFEFEFE),
                  fontSize: 20.0,
                ),))
          )
        ],
      ),
    ),
    Container(
      padding: EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("ALREADY HAVE AN ACCOUNT? ",style: TextStyle(
             color: Color(0xff999DAD),
             fontSize: 13.0,
          )),
          InkWell(
            onTap: ()=>Navigator.of(context).pop(),
                      child: Text("SIGN IN",style: TextStyle(
               color: Color(0xff999DAD),
               fontSize: 13.0,
               fontFamily: 'Raleway'
            )),
          ),
        ],
      ),
    ),
                ],
            ),
          ),
        ),
      ),
    );
  }
}