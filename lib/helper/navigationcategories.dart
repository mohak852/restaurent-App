import 'package:flutter/material.dart';
import 'package:restaruentflutter_app/constant/constant.dart';

class CategoriesName extends StatelessWidget {
  final String text;
  final String route;
  CategoriesName({Key key,this.text,this.route}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>Navigator.of(context).pushNamed(route),
          child: Container(
        height: 60.0,
        width: 100.0,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Color(0xffB9CCFC),
            borderRadius: BorderRadius.circular(20)
        ),
        child: FittedBox(
          fit: BoxFit.contain,
          child: Center(
            child: Text(text,style: kHeadingLight,),
          ),
        ),
      ),
    );
  }
}