// lib/Icons\Que01ChangeIcon.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/BottomNavigationBar.dart';

class Que0111 extends StatefulWidget {
  @override
  _Que0111State createState() => _Que0111State();
}

class _Que0111State extends State<Que0111> {
  Icon fab = Icon(
    Icons.refresh,
  );

  int fabIconNumber = 0;

  final String image1 = "assets/help/Icons/Que01.png";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Change Icon")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        floatingActionButton: FloatingActionButton(
          child: fab,
          onPressed: () => setState(() {
            if (fabIconNumber == 0) {
              fab = Icon(
                Icons.stop,
              );
              fabIconNumber = 1;
            } else {
              fab = Icon(Icons.refresh);
              fabIconNumber = 0;
            }
          }),
        ),
      ),
    );
  }
}
