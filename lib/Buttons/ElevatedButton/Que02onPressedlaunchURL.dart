// lib/Buttons/ElevatedButton/Que03onPressed.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/BottomNavigationBar.dart';
import 'package:url_launcher/url_launcher.dart';

class Que02Elevated11 extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<Que02Elevated11> {
  final String image1 = "assets/help/Buttons/ElevatedButton/Que03.png";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: new AppBar(
          title: new Text('onPressed \nCall fn (Increment Counter)'),
        ),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: Column(
          children: [
            new Center(
              child: new ElevatedButton(
                // ignore: deprecated_member_use
                onPressed: () => {launch('https://kurukshetra.gov.in')},
                child: Text('District Kurukshetra website'),
              ),
            ),
          ],
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
