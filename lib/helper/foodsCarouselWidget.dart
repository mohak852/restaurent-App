
import 'package:flutter/material.dart';
import 'package:restaruentflutter_app/helper/foodsCarouselItemWidget.dart';


class FoodsCarouselWidget extends StatefulWidget {
  
  FoodsCarouselWidget({
    Key key,
  }) : super(key: key);

  @override
  _FoodsCarouselWidgetState createState() => _FoodsCarouselWidgetState();
}

class _FoodsCarouselWidgetState extends State<FoodsCarouselWidget> {

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 210,
        color: Colors.white,
        padding: EdgeInsets.symmetric(vertical: 10),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: <Widget>[
              FoodsCarouselItemWidget(categoryname: "Italian",route: "/Italian",),
              FoodsCarouselItemWidget(categoryname: "Indian",route: "/Indian",),
              FoodsCarouselItemWidget(categoryname: "SouthIndian",route: "/SouthIndian",),
            ],
          ),
        ));
  }
}