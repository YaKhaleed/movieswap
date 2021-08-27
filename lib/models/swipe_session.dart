import 'package:flutter/material.dart';

import 'buddies.dart';
import 'genre.dart';
import 'film.dart';
import 'plattform.dart';

class SwipeSession {
  String id;
  String name;
  List<String> gewaehlteBuddies;
  List<String> gewaehltesGenre;
  List<String> sortierteFilme;
  List<String> gewaehltePlattform;
  DateTime datum;

  SwipeSession({
    @required this.id,
    @required this.name,
    @required this.gewaehlteBuddies,
    @required this.gewaehltesGenre,
    @required this.gewaehltePlattform,
    @required this.sortierteFilme,
    @required this.datum,
  });
}
