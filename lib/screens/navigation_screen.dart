import 'package:flutter/material.dart';

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          // Header
          UserAccountsDrawerHeader(
            accountName: Text('George Papadas'),
            accountEmail: Text('gpapadas@gmail.com'),
            currentAccountPicture: GestureDetector(
              child: CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(Icons.person, color: Colors.white)
              ),
            ),
            decoration: BoxDecoration(color: Colors.red),
          ),
          // Options
          ListTile(
            title: Text('Home Page'),
            leading: Icon(Icons.home, color: Colors.red),
            onTap: () {
              //TODO: Add onTap functionality
            },
          ),
          ListTile(
            title: Text('My Account'),
            leading: Icon(Icons.home, color: Colors.red),
            onTap: () {
              //TODO: Add onTap functionality
            },
          ),
          ListTile(
            title: Text('Orders'),
            leading: Icon(Icons.shopping_basket, color: Colors.red),
            onTap: () {
              //TODO: Add onTap functionality
            },
          ),
          ListTile(
            title: Text('Categories'),
            leading: Icon(Icons.dashboard, color: Colors.red),
            onTap: () {
              //TODO: Add onTap functionality
            },
          ),
          ListTile(
            title: Text('Favorites'),
            leading: Icon(Icons.favorite, color: Colors.red),
            onTap: () {
              //TODO: Add onTap functionality
            },
          ),
          ListTile(
            title: Text('Settings'),
            leading: Icon(Icons.settings),
            onTap: () {
              //TODO: Add onTap functionality
            },
          ),
          ListTile(
            title: Text('About'),
            leading: Icon(Icons.help, color: Colors.blue),
            onTap: () {
              //TODO: Add onTap functionality
            },
          ),
        ],
      ),
    );
  }
}
