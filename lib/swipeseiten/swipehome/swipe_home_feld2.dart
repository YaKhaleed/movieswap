import 'package:flutter/material.dart';
import 'package:movieswap/models/buddies.dart';
import 'package:movieswap/models/swipe_session.dart';

class SwipeHomeFeld2 extends StatefulWidget {
  final List<Buddies> buddies;
  final List<SwipeSession> swipesession;
  final Function annehmen;
  final Function infoErhalten;

  SwipeHomeFeld2(
    this.buddies,
    this.swipesession,
    this.annehmen,
    this.infoErhalten,
  );
  @override
  _SwipeHomeFeld2State createState() => _SwipeHomeFeld2State();
}

class _SwipeHomeFeld2State extends State<SwipeHomeFeld2> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Eingegangene Swipes:"),
        widget.swipesession?.isEmpty ?? true
            ? Column(
                children: [
                  Container(
                    height: 150,
                    width: 280,
                    child: Expanded(
                      child: SizedBox(
                        child: Card(
                          child: Center(
                            child: Text(
                              "Du hast keine Swipe-Anfragen",
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Divider(),
                ],
              )
            : Container(
                height: 150,
                width: 280,
                child: Expanded(
                  child: SizedBox(
                    child: Card(
                      child: Column(
                        children: [
                          ListView.builder(
                            itemBuilder: (ctx, index) {
                              return Card(
                                //elevation: 5,
                                margin: EdgeInsets.symmetric(
                                  vertical: 8,
                                  horizontal: 5,
                                ),
                                child: ListTile(
                                  title: Text(
                                      "Mit: ${widget.buddies[index].name}"),
                                  subtitle: Text("Matches: ..."),
                                  trailing: Row(
                                    children: [
                                      TextButton(
                                        onPressed: widget.annehmen,
                                        child: Text(
                                          "Fortfahren",
                                        ),
                                      ),
                                      TextButton(
                                        onPressed: widget.infoErhalten,
                                        child: Text(
                                          "Info",
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
      ],
    );
  }
}
