import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class FavoriteGridItemWidget extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Theme.of(context).accentColor.withOpacity(0.08),
      onTap: () {
        // Navigator.of(context).pushNamed('/Food', arguments: new RouteArgument(heroTag: this.heroTag, id: this.food.id));
     
      },
      child: Stack(
        alignment: AlignmentDirectional.topEnd,
        children: <Widget>[
          Stack(
            children: <Widget>[
              GestureDetector(
                // onTap: (){
                //    Navigator.of(context).pushNamed('/food',arguments:food);
                // },
                              child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: [
          BoxShadow(color: Theme.of(context).focusColor.withOpacity(0.4), blurRadius: 15, offset: Offset(0, 5)),
        ],
                            image: DecorationImage(
                image: CachedNetworkImageProvider(
                  "https://media.gettyimages.com/photos/different-types-of-food-on-rustic-wooden-table-picture-id861188910?s=612x612"
                ),
                // image: NetworkImage(this.food.imagePath),
                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                       "Food Name",
                        style: Theme.of(context).textTheme.body2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 2),
                      Text(
                       "Food Description",
                        style: Theme.of(context).textTheme.caption,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
              ),
               Container(
                margin: EdgeInsets.only(right: 25, top: 5),
                height: 25,
                width: 70,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(100)), color: Color(0xffB9CCFC)),
                // alignment: AlignmentDirectional.topCenter,
                child: Center(
                  child: Text(
                    "₹50.00",
                    style: Theme.of(context).textTheme.body2.merge(TextStyle(color: Theme.of(context).primaryColor)),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
