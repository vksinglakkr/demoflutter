// lib/Container\QueAssignment2.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/BottomNavigationBar.dart';

class QueAssign211 extends StatelessWidget {
  final String url1 = "https://flutter.dev/";

  final String video1 = "JDDoN2THwug";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Assignment 2")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: Column(
          children: [
            Expanded(
              flex: 4,
              child: Container(
                alignment: Alignment.center,
                color: Color(0xFF2AA650),
                child: Text('2AA650'),
              ),
            ),
            Expanded(
              flex: 4,
              child: Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: Container(
                      alignment: Alignment.center,
                      color: Color(0xFF3BB920),
                      child: Text('2AA650'),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            alignment: Alignment.center,
                            color: Color(0xFF58AAc8),
                            child: Text('58AAc8'),
                          ),
                        ),
                        Expanded(
                          flex: 8,
                          child: Container(
                            alignment: Alignment.center,
                            color: Color(0xFFc74E33),
                            child: Text('0xFFc74E33'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.center,
                color: Color(0xFF8D43B3),
                child: Text('8D43B3'),
              ),
            ),
          ],
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
