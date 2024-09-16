// lib/Switch\Que01Switch.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/BottomNavigationBar.dart';

class Que0111 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que0111> {
  bool isSwitched1 = false;
  bool isSwitched2 = false;
  bool isSwitched3 = false;
  bool isSwitched4 = false;
  bool isSwitched5 = false;
  bool isSwitched6 = false;
  bool isSwitched7 = false;
  bool isSwitched8 = false;

  final String image1 = "assets/help/Switch/Que01.png";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Switch")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: ListView(
          children: [
            Card(
              elevation: 5,
              color: Colors.deepPurple[300],
              child: Center(
                child: Switch(
                  value: isSwitched1,
                  onChanged: (value) {
                    setState(() => isSwitched1 = value);
                  },
                ),
              ),
            ),
            Card(
              elevation: 5,
              color: Colors.deepPurple[300],
              margin: EdgeInsets.all(2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "activeColor: Colors.red",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Switch(
                    value: isSwitched2,
                    activeColor: Colors.red,
                    onChanged: (value) {
                      setState(() => isSwitched2 = value);
                    },
                  ),
                ],
              ),
            ),
            Card(
              elevation: 5,
              color: Colors.deepPurple[300],
              margin: EdgeInsets.all(2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "activeTrackColor: Colors.red",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Switch(
                    value: isSwitched3,
                    activeTrackColor: Colors.red.withOpacity(0.4),
                    onChanged: (value) {
                      setState(() => isSwitched3 = value);
                    },
                  ),
                ],
              ),
            ),
            Card(
              elevation: 5,
              color: Colors.deepPurple[300],
              margin: EdgeInsets.all(2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "inactiveTrackColor: Colors.red",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Switch(
                    value: isSwitched4,
                    inactiveTrackColor: Colors.red,
                    //activeThumbColor: Colors.red,
                    onChanged: (value) {
                      setState(() => isSwitched4 = value);
                    },
                  ),
                ],
              ),
            ),
            Card(
              elevation: 5,
              color: Colors.deepPurple[300],
              margin: EdgeInsets.all(2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "inactiveThumbColor: Colors.red",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Switch(
                    value: isSwitched5,
                    inactiveThumbColor: Colors.red,
                    onChanged: (value) {
                      setState(() => isSwitched5 = value);
                    },
                  ),
                ],
              ),
            ),
            Card(
              elevation: 5,
              color: Colors.deepPurple[300],
              margin: EdgeInsets.all(2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "thumbColor: MaterialStateProperty\n.all(Colors.red)\n                          In on & off both state",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  Switch(
                    value: isSwitched6,
                    thumbColor: MaterialStateProperty.all(Colors.red),
                    onChanged: (value) {
                      setState(() => isSwitched6 = value);
                    },
                  ),
                ],
              ),
            ),
            Card(
              elevation: 5,
              color: Colors.deepPurple[300],
              margin: EdgeInsets.all(2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "trackColor: MaterialStateProperty\n.all(Colors.red)\n                          In on & off both state",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  Switch(
                    value: isSwitched7,
                    trackColor: MaterialStateProperty.all(Colors.red),
                    onChanged: (value) {
                      setState(() => isSwitched7 = value);
                    },
                  ),
                ],
              ),
            ),
            Card(
              elevation: 5,
              color: Colors.deepPurple[300],
              margin: EdgeInsets.all(2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "splashRadius: 50",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Switch(
                    value: isSwitched8,
                    splashRadius: 50,
                    onChanged: (value) {
                      setState(() => isSwitched8 = value);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
