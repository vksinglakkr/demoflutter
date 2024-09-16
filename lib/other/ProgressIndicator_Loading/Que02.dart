// lib/ProgressIndicator_Loading\Que02.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/BottomNavigationBar.dart';

class Que0211 extends StatelessWidget {
  final String image1 = "assets/help/ProgressIndicator_Loading/Que01.png";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("FadeInImage_Loading Bar")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: Column(
          children: [
            Center(
              child: FadeInImage.assetNetwork(
                placeholder: 'assets/images/loading.gif',
                image: 'https://i.ytimg.com/vi/YlqkDY0NqcQ/maxresdefault.jpg',
              ),
            ),
          ],
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
