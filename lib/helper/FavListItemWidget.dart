import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class FavoriteListItemWidget extends StatelessWidget {
  // String heroTag;
  // Food food;
 
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.white,
      focusColor: Theme.of(context).accentColor,
      highlightColor: Theme.of(context).primaryColor,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color:Color(0xffB9CCFC),
                blurRadius: 5,
                offset: Offset(0, 2)),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++insert+++++
                image: DecorationImage(
                    image: CachedNetworkImageProvider("https://media.gettyimages.com/photos/different-types-of-food-on-rustic-wooden-table-picture-id861188910?s=612x612"),
                    // image: NetworkImage(this.food.imagePath),
                     fit: BoxFit.cover),
              ),
            ),
            SizedBox(width: 15),
            Flexible(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                         "Food Name",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: Theme.of(context).textTheme.caption
                        ),
                        Text(
                          "Food Desc",
                          overflow: TextOverflow.fade,
                          softWrap: false,
                          style: Theme.of(context).textTheme.caption,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 8),
                  Text("₹150.00", style:TextStyle(
                      fontSize: 18.0, fontWeight: FontWeight.w600, color: Color(0xffB9CCFC)
                  )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
