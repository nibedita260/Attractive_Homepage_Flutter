import 'package:flutter/material.dart';
import 'package:HomeDemo/Screens/HomeScreen.dart';

var routes = <String, WidgetBuilder>{
  "/home": (BuildContext context) => HomeScreen(),
};
void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HomeDemo',
      home: HomeScreen(),
      routes: routes,
    ));
