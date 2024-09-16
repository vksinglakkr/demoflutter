// lib/Others\General\Que02.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/BottomNavigationBar.dart';

class Que0211 extends StatelessWidget {
  final String url1 = "https://flutter.dev/";
  final String image1 = "assets/help/Spacer/Que01.png";
  final String video1 = "JDDoN2THwug";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("BuildContext ")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: ListView(
                shrinkWrap: true,
                children: [
                  Text('See Video.',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
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
