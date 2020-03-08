import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  ProductCard(
      {this.productName, this.productImage, this.oldPrice, this.price});

  final productName;
  final productImage;
  final oldPrice;
  final price;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: productName,
        child: Material(
          child: InkWell(
            onTap: () {
              print('product tapped!');
            },
            child: GridTile(
              child: Image.asset(
                productImage,
                fit: BoxFit.cover,
              ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    productName,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  title: Text(
                    '\€$price',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  subtitle: Text(
                    '\€$oldPrice',
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w800,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
