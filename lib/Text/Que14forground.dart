// lib/Text\Que14forground.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/BottomNavigationBar.dart';

class Que14Forground extends StatelessWidget {
  final String image1 = "assets/help/Text/Que14.png";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Text => foreground: Paint()")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: Center(
          child: Container(
              child: Stack(
            children: <Widget>[
              // Stroked text as border.
              Text(
                'Greetings, planet!',
                style: TextStyle(
                  fontSize: 40,
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 6
                    ..color = Colors.blue,
                ),
              ),
              // Solid text as fill.
              Text(
                'Greetings, planet!',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.grey[300],
                ),
              ),
            ],
          )),
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
