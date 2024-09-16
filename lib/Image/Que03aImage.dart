// lib/Image\Que03Image.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/BottomNavigationBar.dart';

class Que03aImage11 extends StatelessWidget {
  final String url1 =
      "https://www.developerlibs.com/2019/08/flutter-draw-custom-shaps-clip-path.html";
  final String image1 = "assets/help/Image/Que01.png";
  final String video1 = "NH8IP1KVN84"; //final

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Image.network()")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: Column(
          children: [
            Image.network(
              'https://i.ytimg.com/vi/YlqkDY0NqcQ/maxresdefault.jpg',
              loadingBuilder: (context, child, progress) {
                return progress == null ? child : LinearProgressIndicator();
              },
            ),
          ],
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
