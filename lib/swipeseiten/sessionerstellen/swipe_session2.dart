import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:movieswap/dummy_data.dart';
import 'package:movieswap/models/swipe_session.dart';
import 'package:movieswap/swipeseiten/swipehome/swipe_home.dart';
import 'package:movieswap/swipeseiten/swipeuebersicht/swipe_uebersicht.dart';

import '../../appbar_unten.dart';

class SwipeSession2 extends StatefulWidget {
  final Function dataInput;
  final List<SwipeSession> swipesession;

  SwipeSession2({this.dataInput, this.swipesession});
  @override
  _SwipeSession2State createState() => _SwipeSession2State();
}

class _SwipeSession2State extends State<SwipeSession2> {
  List<String> _plattformChecked = [];
  List<String> _genreChecked = [];

  void _plattformAusgewaehlt(bool gewaehlt, String dataName) {
    if (gewaehlt == true) {
      setState(() {
        _plattformChecked.add(dataName);
      });
    } else {
      setState(() {
        _plattformChecked.remove(dataName);
      });
    }
  }

  void _genreAusgewaehlt(bool gewaehlt, String dataName) {
    if (gewaehlt == true) {
      setState(() {
        _genreChecked.add(dataName);
      });
    } else {
      setState(() {
        _genreChecked.remove(dataName);
      });
    }
  }

  void _zuSwipeSession1(BuildContext context) {
    Navigator.of(context).pop(SwipeSession2());
  }

  void _datenUebergabe() {
    var plattformwahl = _plattformChecked;
    var genrewahl = _genreChecked;

    if (plattformwahl.isEmpty || genrewahl.isEmpty) {
      return;
    }

    widget.dataInput(
      plattformwahl,
      genrewahl,
    );
    //Navigator.of(context).pop();
    _weiterUebersicht(context);
  }

  void _weiterUebersicht(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) {
        return SwipeSessionUebersicht(widget.swipesession);
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //bottomNavigationBar: AppbarUnten(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Column(
            children: [
              Text("${widget.swipesession.length}"),
              Text(
                "Streaming Plattform:",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
                child: Container(
                  height: 150,
                  width: 280,
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Card(
                          margin: EdgeInsets.only(left: 0, right: 0, bottom: 1),
                          child: ListTile(
                            leading: Text(DUMMY_PLATTFORM[index].name),
                            trailing: Checkbox(
                              value: _plattformChecked
                                  .contains(DUMMY_PLATTFORM[index].name),
                              onChanged: (value) {
                                _plattformAusgewaehlt(
                                    value, DUMMY_PLATTFORM[index].name);
                              },
                            ),
                          ));
                    },
                    itemCount: DUMMY_PLATTFORM.length,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "Streaming Plattform:",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 50,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
                child: Container(
                  height: 150,
                  width: 280,
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Card(
                          margin: EdgeInsets.only(left: 0, right: 0, bottom: 1),
                          child: ListTile(
                            leading: Text(DUMMY_GENRE[index].name),
                            trailing: Checkbox(
                              value: _genreChecked
                                  .contains(DUMMY_GENRE[index].name),
                              onChanged: (value) {
                                _genreAusgewaehlt(
                                    value, DUMMY_GENRE[index].name);
                              },
                            ),
                          ));
                    },
                    itemCount: DUMMY_GENRE.length,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 100),
                child: Row(
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    side: BorderSide(
                          color: Colors.black,
                          width: 1,
                        ))),
                        elevation: MaterialStateProperty.all(3),
                        minimumSize: MaterialStateProperty.all(Size(80, 30)),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.black),
                      ),
                      onPressed: () {
                        _zuSwipeSession1(context);
                      },
                      child: Text(
                        "Zurück",
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        elevation: MaterialStateProperty.all(3),
                        minimumSize: MaterialStateProperty.all(Size(80, 30)),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.black),
                      ),
                      onPressed: _datenUebergabe,
                      child: Text(
                        "Weiter",
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
