import 'package:flutter/material.dart';
//https://pub.dev/packages/flutter_swipable
import 'package:flutter_swipable/flutter_swipable.dart';

class Swipekarte extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Swipable(
      // Set the swipable widget
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
        ),
      ),

      // onSwipeRight, left, up, down, cancel, etc...
    );
  }
}
