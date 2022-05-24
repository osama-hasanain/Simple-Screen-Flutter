import 'package:flutter/material.dart';
import 'package:flutter_proj/courses.dart';
import 'package:flutter_proj/products.dart';
import 'package:flutter_proj/products_details.dart';

import 'cart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.red[200],
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.red[200],
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
          iconTheme: IconThemeData(
            color: Colors.black
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15.0),
              bottomRight: Radius.circular(15.0),
            ),
          ),
        ),
        tabBarTheme: TabBarTheme(
          indicator: BoxDecoration(
            color: null
          )
        )
      ),
      home: Courses(),
    );
  }
}