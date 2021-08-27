import "package:flutter/material.dart";
import 'package:movieswap/appbar_unten.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Function homeButton;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AppbarUnten(),
/*      appBar: AppBar(
        title: Text("MovieSwipe"),
      ),*/
      body: Padding(
        padding: const EdgeInsets.only(top: 23),
        child: Center(
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 200,
                      width: 350,
                      child: Card(
                        child: TextButton(
                          onPressed: () {
                            AppbarUnten().zuSwipeHome(context);
                          },
                          child: Column(
                            children: [
                              Text(
                                "Hallo benutzername",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Text(
                                "Text, ob neue Swipe-Anfragen da sind oder nicht",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 200,
                      width: 350,
                      child: Card(
                        child: TextButton(
                          onPressed: null,
                          child: Column(
                            children: [
                              Text(
                                "Hier sind die neusten Filme auf Netflix und Amazon Prime!",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Text(
                                "Hier werden die Filme aufgelistet",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: 200,
                      width: 350,
                      child: Card(
                        child: TextButton(
                          onPressed: null,
                          child: Text(
                            "Statistik",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                        ),
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
