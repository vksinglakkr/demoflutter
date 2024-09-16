// lib/Buttons\FloatingActionButton\Que08Iconwithlabel.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/BottomNavigationBar.dart';

class Que08Floating11 extends StatefulWidget {
  @override
  _Que08Floating11State createState() => _Que08Floating11State();
}

class _Que08Floating11State extends State<Que08Floating11> {
  final String url1 = "https://flutter.dev/";
  final String image1 = "assets/help/Buttons/FloatingActionButton/Que08.png";
  final String video1 = "JDDoN2THwug";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Icon with Label")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          icon: Icon(Icons.refresh),
          label: Text('Refresh'),
        ),
      ),
    );
  }
}
