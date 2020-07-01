import 'package:flutter/material.dart';
import 'package:restaruentflutter_app/helper/navigationcategories.dart';


class Fotter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return     SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CategoriesName(text: "Dessert",route: '/HomePage',),
                  CategoriesName(text: "Italian",route: '/Italian',),
                  CategoriesName(text: "Indian",route: '/Indian',),
                  CategoriesName(text: "South\nIndian",route: '/SouthIndian',),
                ],
              ),
            );
  }
}