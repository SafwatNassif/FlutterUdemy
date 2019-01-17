import 'package:flutter/material.dart';

import 'pages/detailsPage.dart';

class Products extends StatelessWidget {
  final List<String> products;

  Products(this.products);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _buildList();
  }

  Widget _buildList() {
    Widget denerList;
    if (products.length > 0) {
      denerList = ListView.builder(
        itemBuilder: _adapter,
        itemCount: products.length,
      );
    } else {
      denerList = Center(
        child: Text("there is no data"),
      );
    }
    return denerList;
  }

  Widget _adapter(BuildContext context, int index) {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Column(
        children: <Widget>[
          Image.asset("assets/123.jpg", fit: BoxFit.cover),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10.0),
            child: Text(products[index]),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text("Details"),
                onPressed: () =>
                    Navigator.push(context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => DetailsPage()
                        )),
              )
            ],
          )
        ],
      ),
    );
  }
}
