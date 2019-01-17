import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'pages/homePage.dart';

void main() {
  /*
  debugPaintSizeEnabled = true;
  //this base line show where text start from this line
  debugPaintBaselinesEnabled = true;
  //this show pointer when click on any component
  debugPaintPointersEnabled = true;
 */

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        // this debug show grid to  test UI component positions and calculate the distance between items
//        debugShowMaterialGrid: true,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark),
        home: HomePage()
    );
  }
}
