import 'package:flutter/material.dart';

import './price_tag.dart';

class ProductCard extends StatelessWidget {
  // final List<Map<String, dynamic>> products;
  final Map<String, dynamic> product;
  final int productIndex;

  ProductCard(this.product, this.productIndex);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(product['image']),
          // SizedBox(height: 10.0),
          Container(
            padding: EdgeInsets.only(top: 10.0),
            // color: Colors.red,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Flexible(
                  flex: 2,
                  child: Text(
                    product['title'],
                    style: TextStyle(
                      fontSize: 26.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Oswald',
                    ),
                  ),
                ),
                SizedBox(width: 10.0),
                PriceTag(product['price'].toString()),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 6.0,
              vertical: 4.0,
            ),
            child: Text(product['address']),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(4.0),
            ),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.info),
                color: Theme.of(context).accentColor,
                onPressed: () => Navigator.pushNamed<bool>(
                    context, '/product/' + productIndex.toString()),
              ),
              IconButton(
                icon: Icon(Icons.favorite_border),
                color: Colors.red,
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
