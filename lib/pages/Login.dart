import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  Widget _TextFieldEmail() {
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
                labelText: "EMAIL ID",
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

  Widget _TextFieldPass() {
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
                labelText: "PASSWORD",
                labelStyle: TextStyle(
                  color: Color(0xff999DAD),
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
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
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height/2,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/eating-people-characters-restaurant-staff_82574-8799.jpg"),
                    fit: BoxFit.contain
                    )
                  ),
                ),
                    _TextFieldEmail(),
                    _TextFieldPass(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 5.0),
                        child: Text("FORGOT PASSWORD?",style: TextStyle(
                  color: Color(0xff999DAD),
                  fontSize: 12.0,
                ),))
                    ],),
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
            child: InkWell(
              onTap: ()=>Navigator.of(context).pushReplacementNamed('/FirstOn'),
                          child: Center(child: Text("SIGN IN",style: TextStyle(
                    color: Color(0xffFEFEFE),
                    fontSize: 20.0,
                  ),)),
            )
          )
        ],
      ),
    ),
    Container(
      padding: EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("DON'T HAVE AN ACCOUNT? ",style: TextStyle(
             color: Color(0xff999DAD),
             fontSize: 13.0,
          )),
                      InkWell(
                        onTap: ()=> Navigator.of(context).pushNamed('/SignUp'),
                                  child: Text("SIGN UP",style: TextStyle(
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