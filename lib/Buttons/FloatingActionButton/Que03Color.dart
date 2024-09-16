// lib/Buttons\FloatingActionButton\Que03Color.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/BottomNavigationBar.dart';

class Que03Floating11 extends StatefulWidget {
  @override
  _Que03Floating11State createState() => _Que03Floating11State();
}

class _Que03Floating11State extends State<Que03Floating11> {
  final String url1 = "https://flutter.dev/";
  final String image1 = "assets/help/Buttons/ElevatedButton/Que01.png";
  final String video1 = "JDDoN2THwug";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Color")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: Text(""),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.refresh),
          backgroundColor: Colors.lightGreen,
          onPressed: () => setState(() {
            //do something
          }),
        ),
      ),
    );
  }
}
