// lib/Spacer\HomeScreen.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/other/Refactoring/Que00FullTree.dart';
import 'package:flutter_application_1/other/Refactoring/Que01Constant.dart';
import 'package:flutter_application_1/other/Refactoring/Que02Method1.dart';
import 'package:flutter_application_1/other/Refactoring/Que02Method2.dart';
import 'package:flutter_application_1/other/Refactoring/Que03Class.dart';
import 'package:flutter_application_1/pages/BottomNavigationBar.dart';

class HomeRefactoring extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Refactoring")),
        body: SafeArea(
            child: Container(
                child: Builder(
          builder: (context) => ListView(
            padding: EdgeInsets.all(3.0),
            children: [
              Text("Full Widget Tree",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic)),
              ButtonsCode(
                  Que00FullTree(),
                  "lib/Others/Refactoring/Que00FullTree.dart",
                  "Full Widget Tree",
                  "assets/help/Others/Refactoring/1 (1).jpg",
                  "SubTitle"),
              Text("Refactoring with a Constant",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic)),
              ButtonsCode(
                  Que01Constant(),
                  "lib/Others/Refactoring/Que01Constant.dart",
                  "Refactoring with a Constant",
                  "assets/help/Others/Refactoring/1 (2).jpg",
                  "SubTitle"),
              Text("Refactoring with a Method",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic)),
              ButtonsCode(
                  Que02Method1(),
                  "lib/Others/Refactoring/Que02Method1.dart",
                  "Refactoring with a Method (Approch 1- Widget)",
                  "assets/help/Others/Refactoring/1 (3).jpg",
                  "SubTitle"),
              ButtonsCode(
                  Que02Method2(),
                  "lib/Others/Refactoring/Que02Method2.dart",
                  "Refactoring with a Method (Approch 2- Container)",
                  "assets/help/Others/Refactoring/1 (4).jpg",
                  "SubTitle"),
              Text("Refactoring with a Widget Class",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic)),
              ButtonsCode(
                  Que03Class(),
                  "lib/Others/Refactoring/Que03Class.dart",
                  "Refactoring with a Widget Class",
                  "assets/help/Others/Refactoring/1 (5).jpg",
                  "SubTitle"),
            ],
          ),
        ))),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
