import 'package:flutter/material.dart';
import 'package:ui_intern/datasource.dart';
import 'homepage.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Covid-19 Tracker',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'circular',
        primaryColor: primaryblack,
      ),
      home: HomePage(),
    );
  }
}