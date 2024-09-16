// lib/GesterDetector\Que03ContainerOpacityGesterDetector.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/BottomNavigationBar.dart';

class Que03Gester11 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que03Gester11> {
  double _opacity = 1.0;

  final String image1 = "assets/help/GesterDetector/Que03.png";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Flutter Tutorial")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: Column(
          children: [
            GestureDetector(
                child: Opacity(
                  opacity: _opacity,
                  child: Container(height: 100, width: 100, color: Colors.red),
                ),
                onTap: () {
                  setState(() {
                    _opacity = _opacity - .1;
                  });
                }),
          ],
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
