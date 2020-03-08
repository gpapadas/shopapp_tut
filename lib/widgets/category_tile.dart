import 'package:flutter/material.dart';

class CategoryTile extends StatelessWidget {
  CategoryTile({this.imageLocation, this.imageCaption});

  final String imageLocation;
  final String imageCaption;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      child: ListTile(
        title: Image.asset(
          imageLocation,
          width: 100.0,
          height: 80.0,
        ),
        subtitle: Container(
          alignment: Alignment.topCenter,
          child: Text(
            imageCaption,
            // textAlign: TextAlign.center,
          ),
        ),
        onTap: () {
          //TODO: Add onTap functionality
          print('list tile tapped!');
        },
      ),
    );
  }
}
