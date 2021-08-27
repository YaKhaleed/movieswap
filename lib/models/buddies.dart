import 'package:flutter/material.dart';

class Buddies {
  //id = anmeldename
  final String id;
  final String name;
  bool zustand;

  Buddies({
    @required this.id,
    @required this.name,
    this.zustand,
  });
}
