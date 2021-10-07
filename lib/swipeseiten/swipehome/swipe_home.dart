import 'package:flutter/material.dart';
import 'package:movieswap/appbar_unten.dart';
import 'package:movieswap/models/buddies.dart';
import 'package:movieswap/models/film.dart';
import 'package:movieswap/models/genre.dart';
import 'package:movieswap/models/plattform.dart';
import 'package:movieswap/models/swipe_session.dart';
import 'package:movieswap/swipeseiten/sessionerstellen/swipe_session1.dart';

import 'swipe_home_feld1.dart';
import 'swipe_home_feld2.dart';
import 'swipe_home_feld3.dart';

class SwipeHome extends StatefulWidget {
  final List<SwipeSession> swipesession;
  static const routeName = "/swipehome";

  SwipeHome({this.swipesession});
  @override
  _SwipeHomeState createState() => _SwipeHomeState();
}

class _SwipeHomeState extends State<SwipeHome> {
  final List<SwipeSession> _swipesession = [];
  final List<Buddies> gewaehlteBuddies = [];
  //final List daten1 = [];
  //final List daten2 = [];
  void fortfahren() {}

  void infoErhalten() {}

  void annehmen() {}

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
    _swipesession.add(neueSwipeSession);
  }

  void _swipeSessionErstellen1(String name, List<String> gewaehlteBuddies) {
    final neueSwipeSession = SwipeSession(
        id: DateTime.now().toString(),
        name: name,
        gewaehlteBuddies: gewaehlteBuddies,
        gewaehltesGenre: [""],
        gewaehltePlattform: [""],
        sortierteFilme: [""],
        datum: DateTime.now());
    setState(() {
      //widget.daten1.add(name);
      //widget.daten1.add(gewaehlteBuddies);
      _swipesession.add(neueSwipeSession);
    });
  }

  //HIER LÄUFT WAS FALSCH. ADD WIRD NICHT GESPEICHERT!!!!!

  void _neueSwipeSessionStarten(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return SwipeSession1(
        _swipeSessionErstellen1,
        _swipesession,
      );
    }));

    //return Swipe
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 10,
          ),
          SwipeHomeFeld1(
              //daten1?.isEmpty ?? true
              //   ? Buddies(id: "1", name: "Niemand")
              //  : daten1.elementAt(1),
              widget.swipesession,
              fortfahren,
              infoErhalten),
          Divider(),
          SwipeHomeFeld2(widget.swipesession, annehmen, infoErhalten),
          Divider(),
          SwipeHomeFeld3(() => _neueSwipeSessionStarten(context)),
          //Text("${_swipesession.length}"),
          //Text("${widget.swipesession.length}"),
        ]),
      ),
    );
  }
}
