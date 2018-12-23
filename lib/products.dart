import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;

  Products([this.products = const []]) {
    print('[Products Widget] Constructor');
  }

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset('assets/food.jpg'),
          Text(products[index]),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    print('[Products Widget] build()');
    Widget productCard;
    if (products.length > 0) {
      productCard = ListView.builder(
        itemCount: products.length,
        itemBuilder: _buildProductItem,
      );
    } else {
      productCard = Center(
        child: Text('No products found, please add some'),
      );
    }
    return productCard;
  }
}
