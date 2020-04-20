import 'package:flutter/material.dart';
import 'package:animated_splash/animated_splash.dart';

import './datasource.dart';
import './homepage.dart';
import './pages/info.dart';

void main() {
  setupLocator();
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
      home: AnimatedSplash(
        imagePath: 'assets/icon.png',
        home: HomePage(),
        duration: 300,
        type: AnimatedSplashType.StaticDuration,
      ),
    );
  }
}
