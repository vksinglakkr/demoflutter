// lib/General\Que08runApp_MaterialApp_MyApp.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/BottomNavigationBar.dart';

class Que08MyAppRun011 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("RunApp MaterialApp?")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: Column(
          children: [
            Center(
              child: Container(
                child: Text('Hello World', textDirection: TextDirection.ltr),
              ),
            ),
          ],
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}

//Fine Nic Kurukshetra will show on White Screen. text in Center

