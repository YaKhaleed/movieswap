import 'package:flutter/material.dart';
import 'package:movieswap/models/buddies.dart';
import 'package:movieswap/models/swipe_session.dart';
import 'package:movieswap/swipeseiten/swipehome/swipeliste.dart';

class SwipeHomeFeld1 extends StatefulWidget {
  final List<SwipeSession> swipesession;
  final Function fortfahren;
  final Function infoErhalten;

  SwipeHomeFeld1(
    this.swipesession,
    this.fortfahren,
    this.infoErhalten,
  );

  @override
  State<SwipeHomeFeld1> createState() => _SwipeHomeFeld1State();
}

class _SwipeHomeFeld1State extends State<SwipeHomeFeld1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Text("Laufende Swipes:"),
            widget.swipesession?.isEmpty ?? true
                ? Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(10)),
                    height: 150,
                    width: 280,
                    margin: EdgeInsets.all(20),
                    child: Center(
                      child: Text(
                        "Du hast keine laufenden \nSwipeSessions",
                        style: TextStyle(fontSize: 18),
                      ),
                    ))
                : //SizedBox(
                //height: 150,
                //width: 280,
                //child: Card(
                //  shape: RoundedRectangleBorder(
                //   side: BorderSide(
                //     color: Colors.black,
                //     width: 1,
                //   ),
                //  ),
                //child:
                Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(10)),
                    height: 150,
                    width: 280,
                    child: ListView.builder(
                      itemBuilder: (ctx, index) {
                        return Card(
                          //elevation: 5,
                          margin: EdgeInsets.symmetric(
                            vertical: 8,
                            horizontal: 5,
                          ),
                          child: ListTile(
                            title: Text(
                                "Mit: ${widget.swipesession[index].gewaehlteBuddies.join(", ")}"),
                            subtitle: Text("Matches: ..."),
                            trailing: Container(
                              width: 150,
                              child: Row(
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
                          ),
                        );
                      },
                      itemCount: widget.swipesession.length,
                    ),
                  )
          ],
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        ),
      ),
    );
  }
}
