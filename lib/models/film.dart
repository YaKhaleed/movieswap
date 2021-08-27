import 'package:flutter/material.dart';
import 'package:movieswap/models/genre.dart';

class Film {
  final String id;
  final String name;
  List<Genre> genre;
  final double imdbBewertung;

  Film(
      {@required this.id,
      @required this.name,
      @required this.genre,
      this.imdbBewertung});
}
