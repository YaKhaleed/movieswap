import 'package:flutter/material.dart';

class SwipeUebersichtGenrePlattform extends StatelessWidget {
  Function dataInput;
  SwipeUebersichtGenrePlattform(this.dataInput);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Genre: $dataInput",
                textAlign: TextAlign.start,
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "Plattform: $dataInput",
                textAlign: TextAlign.start,
              ),
            ],
          )
        ],
      ),
    );
  }
}
