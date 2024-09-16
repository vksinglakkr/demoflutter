// lib/Container/Que21ContainerStackPositioned.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/BottomNavigationBar.dart';
// import 'package:random_pk/random_pk.dart';

class Que2111 extends StatelessWidget {
  final String url1 = "https://flutter.dev/";
  final String image1 = "assets/help/Container/Que21.png";
  final String video1 = "JDDoN2THwug";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Container, Stack, Positioned")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: Stack(
          children: [
            Positioned(
              top: 100,
              right: 30,
              child:
                  // RandomContainer(
                  Container(
                width: 200.0,
                height: 200.0,
              ),
            ),
          ],
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
