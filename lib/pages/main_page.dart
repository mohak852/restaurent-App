import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:restaruentflutter_app/helper/FavListItemWidget.dart';
import 'package:restaruentflutter_app/helper/couponcard.dart';
import 'package:restaruentflutter_app/helper/drawer.dart';
import 'package:restaruentflutter_app/helper/foodsCarouselWidget.dart';
import 'package:restaruentflutter_app/helper/favoritegriditemwidget.dart';
class MainPage extends StatefulWidget {
  int currentTab = 2;
  MainPage({Key key, this.currentTab}) : super(key: key);
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<List<String>> titleList = [
    ["Masasla Panneer"],
    ["Kadai Panneer"],
    ["Panneer Punjabi"],
    ["Panner Kabab"],
    ["Veg Panner Kohlapuri"],
    ["Panner Kuchbhi"],
    ["Panner Kuch to hai"],
    ["Panner Bilkul"],
  ];
  void _selectTab(int tabItem) {
    setState((){
      this.widget.currentTab = tabItem;
      switch (tabItem) {
        case 0:
          return Navigator.of(context).pushNamed('/HomePage');
          break;
        case 1:
          return Navigator.of(context).pushNamed('/HomePage');
          break;
        case 2:
          return Navigator.of(context).pushNamed('/HomePage');
          break;
        case 3:
          return Navigator.of(context).pushNamed('/HomePage');
          break;
      }
    });
  }
  String layout = 'grid';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Theme.of(context).accentColor,
          selectedFontSize: 0,
          unselectedFontSize: 0,
          iconSize: 22,
          elevation: 0,
          backgroundColor: Colors.transparent,
          selectedIconTheme: IconThemeData(size: 28),
          unselectedItemColor: Theme.of(context).focusColor.withOpacity(1),
          currentIndex: 1,
          onTap: (int i) {
            this._selectTab(i);
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: new Container(height: 0.0),
            ),
            BottomNavigationBarItem(
                title: new Container(height: 5.0),
                icon: Container(
                  width: 42,
                  height: 42,
                  decoration: BoxDecoration(
                    color: Color(0xffB9CCFC),
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Theme.of(context).accentColor.withOpacity(0.4),
                          blurRadius: 40,
                          offset: Offset(0, 15)),
                      BoxShadow(
                          color: Theme.of(context).accentColor.withOpacity(0.4),
                          blurRadius: 13,
                          offset: Offset(0, 3))
                    ],
                  ),
                  child: new Icon(Icons.home,
                      color: Theme.of(context).primaryColor),
                )),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              title: new Container(height: 0.0),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              title: new Container(height: 0.0),
            ),
          ]),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xffB9CCFC),
        elevation: 0,
        centerTitle: true,
        title: Text("Home",style: TextStyle(
          color: Colors.purple
        ),),
      ),
      drawer: DrawerWidget(),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
             Padding(
                padding: const EdgeInsets.only(left: 20, right: 10),
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(vertical: 0),
                  leading: Icon(
                    Icons.category,
                    color: Theme.of(context).hintColor,
                  ),
                  title: Text(
                    'Food Categories',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.display1,
                  ),
                  subtitle: Text(
                    'Check out the items as per the categories',
                    style: Theme.of(context)
                        .textTheme
                        .caption
                        .merge(TextStyle(fontSize: 11)),
                  ),
                ),
              ),
              //+++++++++++++++++++++++++++++++++++++++++++++ADD PAGEVIEW+++++++++++++++++++++++++++++D

              FoodsCarouselWidget(),
              //+++++++++++++++++++++++++++++++++++++++++++++ADD PAGEVIEW+++++++++++++++++++++++++++++D
        Padding(
                padding: const EdgeInsets.only(left: 20, right: 10),
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(vertical: 0),
                  leading: Icon(
                    Icons.restaurant_menu,
                    color: Theme.of(context).hintColor,
                  ),
                  title: Text(
                    'Menu',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style:Theme.of(context).textTheme.display1
                  ),

                ),
              ),
         CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
            autoPlayAnimationDuration: Duration(seconds: 2),
            autoPlayCurve: Curves.easeInOut
          ),
          items: titleList.map((item) => Container(
            height: 300,
            child: CouponCard(abc: item,),
          )).toList(),
        ),
        Padding(
                padding: const EdgeInsets.only(left: 20, right: 10),
                child: ListTile(
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      IconButton(
                        onPressed: () {
                          setState(() {
                            this.layout = 'list';
                          });
                        },
                        icon: Icon(
                          Icons.format_list_bulleted,
                          color: this.layout == 'list'
                              ? Color(0xffB9CCFC)
                              : Color(0xff7A4DD8),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            this.layout = 'grid';
                          });
                        },
                        icon: Icon(
                          Icons.apps,
                          color: this.layout == 'grid'
                              ? Color(0xffB9CCFC)
                              : Color(0xff7A4DD8),
                        ),
                      )
                    ],
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 0),
                  leading: Icon(
                    Icons.restaurant_menu,
                    color: Theme.of(context).hintColor,
                  ),
                  title: Text(
                    'All Menu',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.display1,
                  ),
                ),
              ),

              //+++++++++++++++++++++++++++++++++++++++++++ADD GRIDVIEW++++++++++++++++++++++++++
              Offstage(
                offstage: this.layout != 'list',
                child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  primary: false,
                  itemCount: 10,
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 10);
                  },
                  itemBuilder: (context, index) {
                    return FavoriteListItemWidget();
                  },
                ),
              ),
              Offstage(
                offstage: this.layout != 'grid',
                child: GridView.count(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  primary: false,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 20,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  crossAxisCount:
                      MediaQuery.of(context).orientation == Orientation.portrait
                          ? 2
                          : 4,
                  // Generate 100 widgets that display their index in the List.
                  children: List.generate(10, (index) {
                    return FavoriteGridItemWidget(
                    );
                  }),
                ),
              )
          ],
        ),
      ),
    );

  }
}