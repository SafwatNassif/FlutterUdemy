import 'package:flutter/material.dart';
import 'package:udemy_course_project/productManager.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("EasyList"),
        ),
        body: ProductManager());
  }
}
