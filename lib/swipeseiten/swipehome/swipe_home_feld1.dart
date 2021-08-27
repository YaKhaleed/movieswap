import 'package:flutter/material.dart';
import 'package:movieswap/models/buddies.dart';
import 'package:movieswap/models/swipe_session.dart';

class SwipeHomeFeld1 extends StatefulWidget {
  final List<Buddies> buddies;
  final List<SwipeSession> swipesession;
  final Function fortfahren;
  final Function infoErhalten;

  SwipeHomeFeld1(
    this.buddies,
    this.swipesession,
    this.fortfahren,
    this.infoErhalten,
  );
  @override
  _SwipeHomeFeld1State createState() => _SwipeHomeFeld1State();
}

class _SwipeHomeFeld1State extends State<SwipeHomeFeld1> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Text("Laufende Swipes:"),
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
                                "Du hast keine laufenden \nSwipeSessions",
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
                                          onPressed: widget.fortfahren,
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
      ),
    );
  }
}
