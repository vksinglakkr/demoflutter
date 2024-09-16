// lib/Placeholder\HomeScreen.dartlib\Placeholder\HomeScreen.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/other/Positioned/Que02.dart';
import 'package:flutter_application_1/other/Positioned/Que03.dart';
import 'package:flutter_application_1/other/Positioned/Que04.dart';
import 'package:flutter_application_1/other/Positioned/Que05.dart';
import 'package:flutter_application_1/pages/BottomNavigationBar.dart';
import 'Que01.dart';

class HomePositioned extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Positioned")),
        body: SafeArea(
            child: Container(
                child: Builder(
          builder: (context) => ListView(
            padding: EdgeInsets.all(3.0),
            children: [
              ButtonsCode(
                  Que01Positioned11(),
                  "lib/Others/Positioned/Que01.dart",
                  "Positioned",
                  "assets/help/Others/Positioned/1 (1).jpg",
                  "SubTitle"),
              ButtonsCode(
                  Que02Positioned11(),
                  "lib/Others/Positioned/Que02.dart",
                  "Positioned.directional",
                  "assets/help/Others/Positioned/1 (2).jpg",
                  "SubTitle"),
              ButtonsCode(
                  Que03Positioned11(),
                  "lib/Others/Positioned/Que03.dart",
                  "Positioned.fill",
                  "assets/help/Others/Positioned/1 (3).jpg",
                  "SubTitle"),
              ButtonsCode(
                  Que04Positioned11(),
                  "lib/Others/Positioned/Que04.dart",
                  "Positioned.fromRect",
                  "assets/help/Others/Positioned/1 (4).jpg",
                  "SubTitle"),
              ButtonsCode(
                  Que05Positioned11(),
                  "lib/Others/Positioned/Que05.dart",
                  "Positioned.fromRelativeRect",
                  "assets/help/Others/Positioned/1 (5).jpg",
                  "SubTitle"),
            ],
          ),
        ))),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
