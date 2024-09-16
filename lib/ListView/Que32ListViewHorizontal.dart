// lib/ListView\Que32ListViewHorizontal.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/BottomNavigationBar.dart';

class Que3211 extends StatelessWidget {
  final String image1 = "assets/help/ListView/Que32.png";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: WidgetAppBar("ListView.builder without List declaration")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: Column(
          children: [
            ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, pos) {
                return Container(
                  width: 80,
                  color: Colors.pink,
                  margin: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                );
              },
            ),
          ],
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
