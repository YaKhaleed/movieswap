import 'package:flutter/material.dart';
import 'package:movieswap/appbar_unten.dart';
import 'package:movieswap/models/swipe_session.dart';
import 'package:movieswap/profil.dart';
import './homepage.dart';
import 'swipeseiten/swipehome/swipe_home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MovieSwipe Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AppbarUnten(),
      routes: {
        SwipeHome.routeName: (context) => SwipeHome(),
        Homepage.routeName: (context) => Homepage(),
        Profil.routeName: (context) => Profil(),
      },
    );
  }
}
