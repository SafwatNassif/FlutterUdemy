import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  List<String> products;

  Products(this.products);

  Widget _adapter(BuildContext context, int index) {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Column(
        children: <Widget>[
          Image.asset("assets/123.jpg", fit: BoxFit.cover),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10.0),
            child: Text(products[index]),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemBuilder: _adapter,
      itemCount: products.length,
    );
  }
}
