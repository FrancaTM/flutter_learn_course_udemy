import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String address;
  final double price;
  final String description;

  ProductPage(
      this.title, this.imageUrl, this.address, this.price, this.description);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        print('back button pressed');
        Navigator.pop(context, false);
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(imageUrl),
            Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: 26.0,
                      fontFamily: 'Oswald',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      address,
                      style:
                          TextStyle(fontFamily: 'Oswald', color: Colors.grey),
                    ),
                    // SizedBox(width: 10.0),
                    Container(
                      child: Text(
                        '|',
                        style: TextStyle(color: Colors.grey),
                      ),
                      margin: EdgeInsets.symmetric(horizontal: 10.0),
                    ),
                    Text(
                      '\$' + price.toString(),
                      style:
                          TextStyle(fontFamily: 'Oswald', color: Colors.grey),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    description,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
