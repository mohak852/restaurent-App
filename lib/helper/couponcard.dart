import 'package:cached_network_image/cached_network_image.dart';

import 'package:flutter/material.dart';

class CouponCard extends StatefulWidget {
  final List<String> abc;
  const CouponCard({Key key,this.abc}) : super(key: key);
  @override
  _CouponCardState createState() => _CouponCardState();
}

class _CouponCardState extends State<CouponCard> {

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 350,
      margin: EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 20),
      decoration: BoxDecoration(
        color: Color(0xffB9CCFC),
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(color:Color(0xff7A4DD8).withOpacity(1.0), blurRadius: 15, offset: Offset(0, 5)),
          BoxShadow(color: Color(0xff7A4DD8).withOpacity(0.3), blurRadius: 15, offset: Offset(0, 5)),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          // Image of the card
          Container(
            width: 292,
            height: 105,
            decoration: BoxDecoration(
              image: DecorationImage(
                // image: NetworkImage(this.featuredfood.imagePath),
                image:CachedNetworkImageProvider(
                  'https://www.whiskaffair.com/wp-content/uploads/2019/05/Paneer-Masala-5.jpg',
                ),
                fit: BoxFit.cover,
              ),
              boxShadow: [
          BoxShadow(color: Theme.of(context).focusColor.withOpacity(0.5), blurRadius: 15, offset: Offset(0, 5)),
        ],
              borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10),bottomRight: Radius.circular(30)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Expanded(
                  flex: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        this.widget.abc[0],                        
                        overflow: TextOverflow.fade,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10),
              ],
            ),
          )
        ],
      ),
    );
  }
}