import 'package:flutter/material.dart';
import 'package:shopapp_tut/screens/navigation_screen.dart';

void main() => runApp(ShopApp());

class ShopApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
            icon: Icon(Icons.shopping_cart, color: Colors.white,),
            onPressed: () {
              //TODO: Add onPressed functionality
            },
          ),
        ],
      ),
    );
  }
}
