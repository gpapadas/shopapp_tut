import 'package:flutter/material.dart';
import 'package:shopapp_tut/widgets/product_card.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var productsList = [
    {
      'name': 'Blazer',
      'image': 'assets/products/blazer1.jpeg',
      'oldPrice': 120,
      'price': 85,
    },
    {
      'name': 'Dress',
      'image': 'assets/products/dress1.jpeg',
      'oldPrice': 100,
      'price': 50,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: productsList.length,
      itemBuilder: (BuildContext context, int index) {
        return ProductCard(
          productName: productsList[index]['name'],
          productImage: productsList[index]['image'],
          oldPrice: productsList[index]['oldPrice'],
          price: productsList[index]['price'],
        );
      },
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    );
  }
}