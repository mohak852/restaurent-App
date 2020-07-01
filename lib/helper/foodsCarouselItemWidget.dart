
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class FoodsCarouselItemWidget extends StatefulWidget {
  String categoryname ;
  String route;
  FoodsCarouselItemWidget({Key key,  this.categoryname,this.route}) : super(key: key);

  @override
  _FoodsCarouselItemWidgetState createState() => _FoodsCarouselItemWidgetState();
}

class _FoodsCarouselItemWidgetState extends State<FoodsCarouselItemWidget> {
 bool hasData= false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Theme.of(context).accentColor.withOpacity(0.08),
      highlightColor: Colors.transparent,
      onTap: () {
//            Navigator.of(context).pushNamed(widget.route);
       
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Stack(
            alignment: AlignmentDirectional.topEnd,
            children: <Widget>[
              GestureDetector(
                 onTap: (){
                   Navigator.of(context).pushNamed(widget.route);
                 },
                child: Container(
                  margin: EdgeInsets.only(left: 10, right: 20),
                  width: 100,
                  height: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    boxShadow: [
          BoxShadow(color: Theme.of(context).focusColor.withOpacity(0.6), blurRadius: 15, offset: Offset(0, 5)),
        ],
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image:CachedNetworkImageProvider(
                        "https://images.unsplash.com/photo-1504674900247-0877df9cc836?ixlib=rb-1.2.1&w=1000&q=80"
                      ),
                      // image:NetworkImage(this.widget.imagePath),
                    ),
                  ),
                ),
              ),
             
            ],
          ),
          SizedBox(height: 5),
          Container(
              width: 100,
              margin: EdgeInsets.only(left: 10, right: 20),
              child: Column(
                children: <Widget>[
                  Text(
                  widget.categoryname,
                    overflow: TextOverflow.fade,
                    softWrap: false,
                    style: Theme.of(context).textTheme.body1,
                  ),
                  Text(
                    hasData?this.widget.categoryname:"",
                    overflow: TextOverflow.fade,
                    softWrap: false,
                    style: Theme.of(context).textTheme.caption,
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
