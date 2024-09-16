// lib/Spacer\Que01.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/BottomNavigationBar.dart';

class Que0111 extends StatelessWidget {
  final String image1 = "assets/help/Spacer/Que01.png";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Material App Bar")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: Column(
          children: [
            Row(
              children: [
                Text('Begin'),
                Spacer(), //Defaults to a flex of one.
                Text('Middle'),
                Spacer(
                  flex: 2,
                ), //Gives twice the space between Middle and End than Begin and Middle.
                Text('End'),
              ],
            ),
          ],
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
