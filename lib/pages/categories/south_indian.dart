import 'package:flutter/material.dart';
import 'package:restaruentflutter_app/helper/categoriesName.dart';
import 'package:restaruentflutter_app/helper/fotter.dart';
import 'package:restaruentflutter_app/helper/headericons.dart';
import 'package:restaruentflutter_app/helper/navigationcategories.dart';
import 'package:restaruentflutter_app/helper/scrolldesserts.dart';


class SouthIndian extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10.0),
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                       HeaderIcons(),
                        CategorieName(text1: "South Indi",text2: "an",),
                        Stack(
                          alignment: Alignment.bottomCenter,
                          children: <Widget>[
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  SizedBox(width: MediaQuery.of(context).size.width/8-30,),
                                  SingleChildScrollView(
                                    child: Container(
                                      margin: EdgeInsets.all(10),
                                      child: Row(
                                        children: <Widget>[
                                          CarouselDishes(name1: "Idli", name2: "Sambhar", desc: "It is sweet and soft. Amount of sweetness is perfect. Blueberries taste make this cale delicious", categories: "veg", imgUrl: "assets/unnamed.jpg"),
                                          CarouselDishes(name1: "Dosa", name2: "Sambhar", desc: "It is sweet and soft. Amount of sweetness is perfect. Blueberries taste make this cale delicious", categories: "veg", imgUrl: "assets/unnamed.jpg"),
                                          CarouselDishes(name1: "Vada", name2: "Pav", desc: "It is sweet and soft. Amount of sweetness is perfect. Blueberries taste make this cale delicious", categories: "veg", imgUrl: "assets/unnamed.jpg"),
                                        ],
                                      ),
                                    ),
                                  ),
                                ]
                                ),
                              ),
                            ],
                        ),
                        Fotter()
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