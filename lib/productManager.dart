import 'package:flutter/material.dart';

import './productControl.dart';
import './products.dart';

class ProductManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProductMangerState();
  }
}

class _ProductMangerState extends State<ProductManager> {
  List<String> _product = ['food Tester'];

  void _productPress(String product) {
    setState(() {
      _product.add(product);
      print(_product);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            margin: EdgeInsets.all(10.0), child: ProductControl(_productPress)),
        Expanded(
          child: Products(_product),
        ),
      ],
    );
  }
}
