// lib/Image\Que05Image.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/BottomNavigationBar.dart';

class Que05Image11 extends StatelessWidget {
  final String url1 = "https://flutter.dev/";
  final String image1 = "assets/help/Image/Que05.png";
  final String video1 = "JDDoN2THwug";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("fit: BoxFit.cover")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: Column(
          children: [
            Image.network(
              "https://i.ytimg.com/vi/YlqkDY0NqcQ/maxresdefault.jpg",
              height: 300, width: 300,
              fit: BoxFit.cover,
              //fit: BoxFit.contain,
              //fit: BoxFit.fill,
              //fit: BoxFit.fitHeight,
              //fit: BoxFit.fitWidth,
              //fit: BoxFit.scaleDown,
              //fit: BoxFit.none,
            ),
            SizedBox(height: 5.0),
            Image(
              image: AssetImage('assets/images/Que05Image.jpg'),
              fit: BoxFit.fill,
            ),
            Text("Image/Que05Image.dart")
          ],
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
