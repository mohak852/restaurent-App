
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
  List<String> titleList = [
    ""
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 210,
        color: Colors.white,
        padding: EdgeInsets.symmetric(vertical: 10),
        child: ListView.builder(
          itemCount:5,
          itemBuilder: (context, index) {
            double _marginLeft = 0;
            (index == 0) ? _marginLeft = 20 : _marginLeft = 0;
            return FoodsCarouselItemWidget();
          },
          scrollDirection: Axis.horizontal,
        ));
  }
}