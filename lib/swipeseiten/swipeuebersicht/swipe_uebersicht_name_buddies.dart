import 'package:flutter/material.dart';

class SwipeUbersichtNameBuddies extends StatelessWidget {
  Function dataInput;

  SwipeUbersichtNameBuddies(this.dataInput);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Center(
              child: Text(
                "$dataInput",
                style: TextStyle(fontSize: 24),
              ),
            ),
          ),
          Row(
            children: [
              Text(
                "Name: $dataInput",
                textAlign: TextAlign.start,
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "Buddies: $dataInput",
                textAlign: TextAlign.start,
              ),
            ],
          )
        ],
      ),
    );
  }
}
