// lib/ProgressIndicator_Loading\Que01.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/BottomNavigationBar.dart';

class Que0111 extends StatelessWidget {
  final String image1 = "assets/help/ProgressIndicator_Loading/Que01.png";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("CircularProgressIndicator Demo")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircularProgressIndicator(),
                CircularProgressIndicator(
                  backgroundColor: Colors.red,
                ),
                CircularProgressIndicator(
                  strokeWidth: 10.0,
                ),
              ]),
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
