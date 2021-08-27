import "package:flutter/material.dart";
import 'package:movieswap/homepage.dart';
import 'package:movieswap/profil.dart';
import 'swipeseiten/swipehome/swipe_home.dart';

class AppbarUnten extends StatelessWidget {
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
