import 'package:flutter/material.dart';
import 'package:movieswap/swipeseiten/swipehome/swipe_home.dart';
import 'package:movieswap/swipeseiten/sessionerstellen/swipe_session1.dart';

class SwipeUebersichtPlattformGenre extends StatelessWidget {
  List<String> genre;
  List<String> plattform;
  SwipeUebersichtPlattformGenre(this.plattform, this.genre);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Genre: ${genre.join(", ")}",
                textAlign: TextAlign.start,
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "Plattform: ${plattform.join(", ")}",
                textAlign: TextAlign.start,
              ),
            ],
          )
        ],
      ),
    );
  }
}
