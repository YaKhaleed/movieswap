import 'package:flutter/material.dart';
import 'package:movieswap/models/swipe_session.dart';
import 'package:movieswap/swipeseiten/swipehome/swipe_home.dart';
import 'package:movieswap/swipeseiten/sessionerstellen/swipe_session1.dart';
import 'package:movieswap/swipeseiten/sessionerstellen/swipe_session2.dart';
import 'package:movieswap/swipeseiten/swipeuebersicht/swipe_uebersicht_plattform_und_genre.dart';
import 'package:movieswap/swipeseiten/swipeuebersicht/swipe_uebersicht_name_buddies.dart';

import '../../appbar_unten.dart';

class SwipeSessionUebersicht extends StatelessWidget {
  final List<SwipeSession> swipeSession;
  SwipeSessionUebersicht(this.swipeSession);

  void _anfrageSchicken(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return SwipeHome(swipesession: swipeSession);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Column(
          children: [
            Center(
              child: Text(
                "Deine Auswahl",
                style: TextStyle(
                    decoration: TextDecoration.underline, fontSize: 30),
              ),
            ),
            Text("${swipeSession.length}"),
            SwipeUbersichtNameBuddies(
                swipeSession[swipeSession.length - 1].name,
                swipeSession[swipeSession.length - 1].gewaehlteBuddies),
            SwipeUebersichtPlattformGenre(
                swipeSession[swipeSession.length - 1].gewaehltePlattform,
                swipeSession[swipeSession.length - 1].gewaehltesGenre),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(3),
                      minimumSize: MaterialStateProperty.all(Size(80, 30)),
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      foregroundColor: MaterialStateProperty.all(Colors.black),
                    ),
                    onPressed: null,
                    child: Text(
                      "Auswahl bearbeiten",
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(3),
                      minimumSize: MaterialStateProperty.all(Size(80, 30)),
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      foregroundColor: MaterialStateProperty.all(Colors.black),
                    ),
                    onPressed: () {
                      _anfrageSchicken(context);
                    },
                    child: Text(
                      "Anfrage schicken",
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
