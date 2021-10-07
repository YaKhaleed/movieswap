import 'package:flutter/material.dart';
import 'package:movieswap/swipeseiten/swipehome/swipe_home.dart';

class SwipeUbersichtNameBuddies extends StatelessWidget {
  String name;
  List<String> buddies;

  SwipeUbersichtNameBuddies(this.name, this.buddies);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Center(
              child: Text(
                "kp",
                style: TextStyle(fontSize: 24),
              ),
            ),
          ),
          Row(
            children: [
              Text(
                "Name: $name",
                textAlign: TextAlign.start,
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "Buddies: ${buddies.join(", ")}",
                textAlign: TextAlign.start,
              ),
            ],
          )
        ],
      ),
    );
  }
}
