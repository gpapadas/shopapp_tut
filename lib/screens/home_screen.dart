import 'package:flutter/material.dart';
import 'package:shopapp_tut/screens/navigation_screen.dart';
import 'package:shopapp_tut/widgets/categories_list.dart';
import 'package:shopapp_tut/widgets/products_grid.dart';
import 'package:carousel_pro/carousel_pro.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationScreen(),
      appBar: AppBar(
        elevation: 0.0, // removes the bottom shadow of the App bar
        backgroundColor: Colors.red,
        title: Text('Fash app'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {
              //TODO: Add onPressed functionality
            },
          ),
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: () {
              //TODO: Add onPressed functionality
            },
          ),
        ],
      ),
      body: ListView(children: [
        Container(
          height: 200.0,
          child: Carousel(
            boxFit: BoxFit.cover,
            images: [
              AssetImage('assets/c1.jpg'),
              AssetImage('assets/m1.jpeg'),
              AssetImage('assets/m2.jpg'),
              AssetImage('assets/w1.jpeg'),
              AssetImage('assets/w3.jpeg'),
              AssetImage('assets/w4.jpeg'),
            ],
            autoplay: false,
            // it has meaning to set these properties if autoplay is true
            // animationCurve: Curves.fastOutSlowIn,
            // animationDuration: Duration(milliseconds: 1000),
            dotSize: 4.0,
            indicatorBgPadding: 10.0,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Categories'),
        ),
        CategoriesList(),
        Padding(
          padding: EdgeInsets.all(20.0),
          child: Text('Recent products'),
        ),
        Container(
          height: 320.0,
          child: Products(),
        ),
      ]),
    );
  }
}
