import 'package:flutter/material.dart';
import 'package:movieswap/models/swipe_session.dart';
import 'package:movieswap/swipeseiten/swipesession/swipe_session1.dart';
import 'package:movieswap/swipeseiten/swipesession/swipe_session2.dart';
import 'package:movieswap/swipeseiten/swipeuebersicht/swipe_uebersicht_genre_und_plattform.dart';
import 'package:movieswap/swipeseiten/swipeuebersicht/swipe_uebersicht_name_buddies.dart';

import '../../appbar_unten.dart';

class SwipeSessionUebersicht extends StatelessWidget {
  Function dataInput;
  SwipeSessionUebersicht(this.dataInput);
  final List<SwipeSession> _swipeSession = [];

  void _nameUndBuddies(String name, List<String> buddies) {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AppbarUnten(),
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
            SwipeUbersichtNameBuddies(SwipeSession1().dataInput),
            SwipeUebersichtGenrePlattform(SwipeSession2().dataInput),
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
                    onPressed: null,
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
