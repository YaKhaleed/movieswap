import 'package:flutter/material.dart';
import 'package:movieswap/appbar_unten.dart';
import 'package:movieswap/models/buddies.dart';
import 'package:movieswap/models/film.dart';
import 'package:movieswap/models/genre.dart';
import 'package:movieswap/models/plattform.dart';
import 'package:movieswap/models/swipe_session.dart';
import 'package:movieswap/swipeseiten/swipesession/swipe_session1.dart';

import 'swipe_home_feld1.dart';
import 'swipe_home_feld2.dart';
import 'swipe_home_feld3.dart';

class SwipeHome extends StatelessWidget {
  final List<Buddies> gewaehlteBuddiess;
  final List<SwipeSession> swipesession;

  SwipeHome({this.gewaehlteBuddiess, this.swipesession});

  void fortfahren() {}
  void infoErhalten() {}
  void annehmen() {}

//List mit deren Typen in String umgewandelt. Eventuell später ändern
  void _swipeSessionErstellen({
    String name,
    List<String> gewaehlteBuddies,
    List<String> gewaehltesGenre,
    List<String> sortierteFilme,
    List<String> gewaehltePlattform,
    DateTime datum,
  }) {
    final neueSwipeSession = SwipeSession(
      id: DateTime.now().toString(),
      name: name,
      gewaehlteBuddies: gewaehlteBuddies,
      gewaehltesGenre: gewaehltesGenre,
      gewaehltePlattform: gewaehltePlattform,
      sortierteFilme: sortierteFilme,
      datum: datum,
    );
    swipesession.add(neueSwipeSession);
  }

  void _neueSwipeSessionStarten(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return SwipeSession1();
    }));
    //return Swipe
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AppbarUnten(),
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Center(
          child: Column(children: [
            SwipeHomeFeld1(
                gewaehlteBuddiess, swipesession, fortfahren, infoErhalten),
            SwipeHomeFeld2(
                gewaehlteBuddiess, swipesession, annehmen, infoErhalten),
            SwipeHomeFeld3(() => _neueSwipeSessionStarten(context)),
          ]),
        ),
      ),
    );
  }
}
