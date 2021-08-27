import 'package:flutter/material.dart';
import 'package:movieswap/dummy_data.dart';
import 'package:movieswap/models/buddies.dart';

import '../../appbar_unten.dart';
import 'swipe_session2.dart';

class SwipeSession1 extends StatefulWidget {
  final Function dataInput;

  SwipeSession1({this.dataInput});

  @override
  _SwipeSession1State createState() => _SwipeSession1State();
}

class _SwipeSession1State extends State<SwipeSession1> {
  final _nameSession = TextEditingController();
  List<String> _userChecked = [];

  void _ausgewaehlt(bool gewaehlt, String dataName) {
    if (gewaehlt == true) {
      setState(() {
        _userChecked.add(dataName);
      });
    } else {
      setState(() {
        _userChecked.remove(dataName);
      });
    }
  }

  void _datenUebergabe() {
    final nameSession = _nameSession.text;
    final gewaehlteBuddies = _userChecked;

    if (nameSession.isEmpty || gewaehlteBuddies.isEmpty) {
      return;
    }

    //Vermutung, warum dataInput noch nciht klappt:
    //SwipeSession1 wird keine Funktion übergeben udn somit router etc null
    // widget.dataInput(
    //   nameSession,
    //   gewaehlteBuddies,
    // );

    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) {
        return SwipeSession2();
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AppbarUnten(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text(
                  "Gib der Session einen Namen:",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.black,
                    width: 1,
                  ),
                ),
                elevation: 5,
                margin: EdgeInsets.only(
                  top: 30,
                  left: 60,
                  right: 60,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 5,
                  ),
                  child: TextField(
                    //decoration: InputDecoration(labelText: "Name der Session"),
                    controller: _nameSession,
                    keyboardType: TextInputType.name,
                    onSubmitted: (_) => _datenUebergabe(),
                  ),
                ),
              ),
              SizedBox(
                height: 90,
              ),
              Text(
                "Wähle deine Buddies aus:",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 30,
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
                          margin: EdgeInsets.only(
                            bottom: 1,
                          ),
                          child: ListTile(
                            leading: Text(DUMMY_BUDDIES[index].name),
                            trailing: Checkbox(
                              value: _userChecked
                                  .contains(DUMMY_BUDDIES[index].name),
                              onChanged: (value) {
                                _ausgewaehlt(value, DUMMY_BUDDIES[index].name);
                              },
                            ),
                          ));
                    },
                    itemCount: DUMMY_BUDDIES.length,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(3),
                  minimumSize: MaterialStateProperty.all(Size(80, 30)),
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  foregroundColor: MaterialStateProperty.all(Colors.black),
                ),
                onPressed: _datenUebergabe,
                child: Text(
                  "Weiter",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
