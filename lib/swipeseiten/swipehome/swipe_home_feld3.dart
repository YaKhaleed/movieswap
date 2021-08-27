import 'package:flutter/material.dart';

class SwipeHomeFeld3 extends StatefulWidget {
  final Function anfrage;

  SwipeHomeFeld3(this.anfrage);
  @override
  _SwipeHomeFeld3State createState() => _SwipeHomeFeld3State();
}

class _SwipeHomeFeld3State extends State<SwipeHomeFeld3> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 150,
          width: 280,
          child: Expanded(
            child: SizedBox(
              child: Center(
                child: Text(
                  "Neue MovieSwipe-Anfrage erstellen",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
        ),
        ElevatedButton(
          style: ButtonStyle(
            elevation: MaterialStateProperty.all(3),
            minimumSize: MaterialStateProperty.all(Size(80, 30)),
            backgroundColor: MaterialStateProperty.all(Colors.white),
            foregroundColor: MaterialStateProperty.all(Colors.black),
          ),
          onPressed: widget.anfrage,
          child: Text("Weiter"),
        ),
      ],
    );
  }
}
