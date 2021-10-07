import 'package:flutter/material.dart';

class Swipeliste extends StatelessWidget {
  final String buddies;
  //final int matches;
  final Function fortfahren;
  final Function infoErhalten;

  Swipeliste(
      this.buddies,
      //this.matches,
      this.fortfahren,
      this.infoErhalten);

  @override
  Widget build(BuildContext context) {
    return Card(
        //elevation: 5,
        margin: EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 5,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.baseline,
          children: [
            Expanded(child: Text("Mit: ${buddies}")),
            Column(
              children: [
                Text("Mit: ${buddies}"),
                Text("Matches: ..."),
              ],
            ),
            Row(
              children: [
                TextButton(
                  onPressed: fortfahren,
                  child: Text(
                    "Fortfahren",
                  ),
                ),
                TextButton(
                  onPressed: infoErhalten,
                  child: Text(
                    "Info",
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
