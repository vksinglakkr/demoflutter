// lib/InkWell\Que01ClickonText.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/BottomNavigationBar.dart';

class Que01InkWell11 extends StatefulWidget {
  @override
  _Que01InkWell11State createState() => _Que01InkWell11State();
}

class _Que01InkWell11State extends State<Que01InkWell11> {
  String name = "NIC Kurukshetra";

  final String image1 = "assets/help/InkWell/Que01.png";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("InkWell \nChange text on Click")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: Center(
          child: InkWell(
            child: Center(
              child: Container(
                child: Text("$name"),
              ),
            ),
            onTap: () {
              setState(() {
                name = "Clicked on Text using InkWell";
              });
            },
          ),
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
