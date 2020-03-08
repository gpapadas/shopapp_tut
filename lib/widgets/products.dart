import 'package:flutter/material.dart';

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
        return SingleProduct(
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

class SingleProduct extends StatelessWidget {
  SingleProduct(
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
