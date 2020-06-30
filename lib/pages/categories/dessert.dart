import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaruentflutter_app/constant/constant.dart';
import 'package:restaruentflutter_app/helper/categoriesName.dart';
import 'package:restaruentflutter_app/helper/headericons.dart';
import 'package:restaruentflutter_app/helper/navigationcategories.dart';
import 'package:restaruentflutter_app/helper/scrolldesserts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

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
                        CategorieName(text1: "Desse",text2: "rt",),
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
                                          CarouselDishes(name1: "BlueBerry", name2: "Cake", desc: "It is sweet and soft. Amount of sweetness is perfect. Blueberries taste make this cale delicious", categories: "veg", imgUrl: "assets/unnamed.jpg"),
                                          CarouselDishes(name1: "BlueBerry", name2: "Cake", desc: "It is sweet and soft. Amount of sweetness is perfect. Blueberries taste make this cale delicious", categories: "veg", imgUrl: "assets/unnamed.jpg"),
                                          CarouselDishes(name1: "BlueBerry", name2: "Cake", desc: "It is sweet and soft. Amount of sweetness is perfect. Blueberries taste make this cale delicious", categories: "veg", imgUrl: "assets/unnamed.jpg"),
                                        ],
                                      ),
                                    ),
                                  ),
                                ]
                                ),
                              ),
                            ],
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                             CategoriesName(text: "Dessert",route: '/HomePage',),
                             CategoriesName(text: "Italian"),
                             CategoriesName(text: "Indian"),
                             CategoriesName(text: "South\nIndian"),
                            ],
                          ),
                        )
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



