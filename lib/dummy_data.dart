import "package:flutter/material.dart";
import './models/film.dart';

import './models/buddies.dart';
import './models/genre.dart';
import 'models/plattform.dart';

final DUMMY_FILM = [
  Film(
    id: "1",
    name: "Die Verurteilten",
    genre: [DUMMY_GENRE.singleWhere((element) => element.name == "Drama")],
    imdbBewertung: 9.3,
  ),
  Film(
    id: "2",
    name: "Der Pate",
    genre: [
      DUMMY_GENRE.singleWhere((element) => element.name == "Drama"),
      DUMMY_GENRE.singleWhere((element) => element.name == "Kriminal")
    ],
    imdbBewertung: 9.2,
  ),
  Film(
    id: "3",
    name: "Der Pate 2",
    genre: [
      DUMMY_GENRE.singleWhere((element) => element.name == "Drama"),
      DUMMY_GENRE.singleWhere((element) => element.name == "Kriminal")
    ],
    imdbBewertung: 9.0,
  ),
  Film(
    id: "4",
    name: "The Dark Night",
    genre: [
      DUMMY_GENRE.singleWhere((element) => element.name == "Drama"),
      DUMMY_GENRE.singleWhere((element) => element.name == "Kriminal"),
      DUMMY_GENRE.singleWhere((element) => element.name == "Action"),
      DUMMY_GENRE.singleWhere((element) => element.name == "Thriller"),
    ],
    imdbBewertung: 9.0,
  ),
  Film(
    id: "5",
    name: "Die zwölf Geschworenen",
    genre: [
      DUMMY_GENRE.singleWhere((element) => element.name == "Drama"),
      DUMMY_GENRE.singleWhere((element) => element.name == "Kriminal"),
    ],
    imdbBewertung: 9.0,
  ),
  Film(
    id: "6",
    name: "Der Herr der Ringe: Die Rückkehr des Königs",
    genre: [
      DUMMY_GENRE.singleWhere((element) => element.name == "Drama"),
      DUMMY_GENRE.singleWhere((element) => element.name == "Kriminal"),
      DUMMY_GENRE.singleWhere((element) => element.name == "Abenteuer"),
      DUMMY_GENRE.singleWhere((element) => element.name == "Fantasie"),
    ],
    imdbBewertung: 8.9,
  ),
  Film(
    id: "7",
    name: "Zwei glorreiche Halunken",
    genre: [
      DUMMY_GENRE.singleWhere((element) => element.name == "Western"),
    ],
    imdbBewertung: 8.8,
  ),
  Film(
    id: "8",
    name: "Fight Club",
    genre: [
      DUMMY_GENRE.singleWhere((element) => element.name == "Drama"),
    ],
    imdbBewertung: 8.8,
  ),
  Film(
    id: "9",
    name: "Forrest Gump",
    genre: [
      DUMMY_GENRE.singleWhere((element) => element.name == "Drama"),
      DUMMY_GENRE.singleWhere((element) => element.name == "Romantik"),
    ],
    imdbBewertung: 8.8,
  ),
  Film(
    id: "10",
    name: "Inception",
    genre: [
      DUMMY_GENRE.singleWhere((element) => element.name == "Science-Fiction"),
      DUMMY_GENRE.singleWhere((element) => element.name == "Thriller"),
      DUMMY_GENRE.singleWhere((element) => element.name == "Action"),
      DUMMY_GENRE.singleWhere((element) => element.name == "Abenteuer"),
    ],
    imdbBewertung: 8.8,
  ),
  Film(
    id: "11",
    name: "Das Schweigen der Lämmer",
    genre: [
      DUMMY_GENRE.singleWhere((element) => element.name == "Drama"),
      DUMMY_GENRE.singleWhere((element) => element.name == "Thriller"),
      DUMMY_GENRE.singleWhere((element) => element.name == "Kriminal"),
    ],
    imdbBewertung: 8.6,
  ),
  Film(
    id: "12",
    name: "Das Leben ist schön",
    genre: [
      DUMMY_GENRE.singleWhere((element) => element.name == "Komödie"),
      DUMMY_GENRE.singleWhere((element) => element.name == "Drama"),
      DUMMY_GENRE.singleWhere((element) => element.name == "Romantik"),
    ],
    imdbBewertung: 8.6,
  ),
  Film(
    id: "13",
    name: "Der Soldat James Ryan",
    genre: [
      DUMMY_GENRE.singleWhere((element) => element.name == "Drama"),
      DUMMY_GENRE.singleWhere((element) => element.name == "Krieg"),
    ],
    imdbBewertung: 8.6,
  ),
];

const DUMMY_GENRE = const [
  Genre(
    id: "a1",
    name: "Abenteuer",
  ),
  Genre(
    id: "a2",
    name: "Action",
  ),
  Genre(
    id: "a3",
    name: "Anime",
  ),
  Genre(
    id: "z1",
    name: "Zeichentrick",
  ),
  Genre(
    id: "d1",
    name: "Drama",
  ),
  Genre(
    id: "f1",
    name: "Fantasie",
  ),
  Genre(
    id: "b1",
    name: "Biografie",
  ),
  Genre(
    id: "k1",
    name: "Komödie",
  ),
  Genre(
    id: "h1",
    name: "Horror",
  ),
  Genre(
    id: "k1",
    name: "Krieg",
  ),
  Genre(
    id: "k2",
    name: "Kriminal",
  ),
  Genre(
    id: "m1",
    name: "Martial-Arts",
  ),
  Genre(
    id: "m2",
    name: "Musik",
  ),
  Genre(
    id: "r1",
    name: "Romantik",
  ),
  Genre(
    id: "s1",
    name: "Sciene-Fiction",
  ),
  Genre(
    id: "s2",
    name: "Sport",
  ),
  Genre(
    id: "t1",
    name: "Thriller",
  ),
  Genre(
    id: "w1",
    name: "Western",
  ),
];
var DUMMY_BUDDIES = [
  Buddies(
    id: "reytim",
    name: "Tim",
  ),
  Buddies(
    id: "w-styles",
    name: "Walid",
  ),
  Buddies(
    id: "Lofendos",
    name: "Marc",
  ),
  Buddies(
    id: "Awxell",
    name: "Ali",
  ),
  Buddies(
    id: "marantos",
    name: "Qendrim",
  ),
];
const DUMMY_PLATTFORM = const [
  StreamingPlattform(
    id: "n",
    name: "Netflix",
  ),
  StreamingPlattform(
    id: "p",
    name: "Amazon Prime",
  ),
  StreamingPlattform(
    id: "d",
    name: "Disney Plus",
  ),
];
