import "package:flutter/material.dart";
import 'package:movieswap/homepage.dart';
import 'package:movieswap/profil.dart';
import 'swipeseiten/swipehome/swipe_home.dart';

class AppbarUnten extends StatefulWidget {
  @override
  _AppbarUntenState createState() => _AppbarUntenState();
}

class _AppbarUntenState extends State<AppbarUnten> {
  final List<Map<String, Object>> _seiten = [
    {
      "seite": Homepage(),
      "titel": "Hauptseite",
    },
    {
      "seite": SwipeHome(),
      "titel": "Swipeseite",
    },
    {
      "seite": Profil(),
      "titel": "Profilseite",
    },
  ];

  int _seitenindex = 0;

  void _gewaehlteSeite(int index) {
    setState(() {
      _seitenindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _seiten[_seitenindex]["titel"],
        ),
      ),
      body: _seiten[_seitenindex]["seite"],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _gewaehlteSeite,
        currentIndex: _seitenindex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "Hauptseite",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.movie,
            ),
            label: "MovieSwap",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: "Dein Profil",
          ),
        ],
      ),
    );
  }
}

/*class AppbarUnten extends StatelessWidget {
  AppbarUnten();

  void zuHomepage(BuildContext ctx) {
    Navigator.of(ctx).pushReplacement(MaterialPageRoute(builder: (_) {
      return Homepage();
    }));
  }

  void zuSwipeHome(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return SwipeHome();
    }));
  }

  void zumProfil(BuildContext ctx) {
    Navigator.of(ctx).pushReplacement(
      MaterialPageRoute(builder: (_) => Profil()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        height: 60,
        child: BottomAppBar(
          color: Colors.blueAccent,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 60),
                child: IconButton(
                  iconSize: 30,
                  icon: Icon(Icons.home),
                  onPressed: () {
                    zuHomepage(context);
                  },
                  alignment: Alignment.centerLeft,
                ),
              ),
              Spacer(),
              IconButton(
                iconSize: 30,
                icon: Icon(Icons.movie),
                onPressed: () {
                  zuSwipeHome(context);
                },
                alignment: Alignment.center,
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 60),
                child: IconButton(
                  iconSize: 30,
                  icon: Icon(Icons.account_circle),
                  onPressed: () {
                    zumProfil(context);
                  },
                  alignment: Alignment.centerRight,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
*/
