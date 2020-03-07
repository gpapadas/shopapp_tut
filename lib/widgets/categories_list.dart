import 'package:flutter/material.dart';
import 'package:shopapp_tut/widgets/category_tile.dart';

class CategoriesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CategoryTile(
            imageLocation: 'assets/cats/tshirt.png',
            imageCaption: 't-shirts',
          ),
          CategoryTile(
            imageLocation: 'assets/cats/dress.png',
            imageCaption: 'dresses',
          ),
          CategoryTile(
            imageLocation: 'assets/cats/formal.png',
            imageCaption: 'formal',
          ),
          CategoryTile(
            imageLocation: 'assets/cats/informal.png',
            imageCaption: 'informal',
          ),
          CategoryTile(
            imageLocation: 'assets/cats/shoe.png',
            imageCaption: 'shoes',
          ),
          CategoryTile(
            imageLocation: 'assets/cats/jeans.png',
            imageCaption: 'jeans',
          ),
          CategoryTile(
            imageLocation: 'assets/cats/accessories.png',
            imageCaption: 'accessories',
          ),
        ],
      ),
    );
  }
}
