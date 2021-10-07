import 'package:flutter/material.dart';
import 'package:flutter_swipable/flutter_swipable.dart';

class Swipe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height * 0.7,
        // Important to keep as a stack to have overlay of cards.
        child: Stack(
          children: null,
        ),
      ),
    );
  }
}
