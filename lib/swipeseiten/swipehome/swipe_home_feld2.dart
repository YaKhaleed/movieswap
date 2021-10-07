import 'package:flutter/material.dart';
import 'package:movieswap/models/buddies.dart';
import 'package:movieswap/models/swipe_session.dart';

class SwipeHomeFeld2 extends StatefulWidget {
  final List<SwipeSession> swipesession;
  final Function annehmen;
  final Function infoErhalten;

  SwipeHomeFeld2(
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
    return Container(
      child: Center(
        child: Column(
          children: [
            Text("Eingegangene Swipes:"),
            widget.swipesession?.isEmpty ?? true
                ? Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(10)),
                    height: 150,
                    width: 280,
                    child: Center(
                      child: Text(
                        "Du hast keine Swipe-Anfragen",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  )
                : Container(
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
                                "Mit: ${widget.swipesession[index].gewaehlteBuddies}"),
                            subtitle: Text("Matches: ..."),
                            trailing: Container(
                              width: 150,
                              child: Row(
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
