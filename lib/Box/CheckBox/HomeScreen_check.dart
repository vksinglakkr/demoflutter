// lib/Box\HomeScreen_Rotated.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/BottomNavigationBar.dart';
import 'package:flutter_application_1/Box/CheckBox/Que02.dart';
import 'package:flutter_application_1/Box/CheckBox/Que03.dart';
import 'package:flutter_application_1/Box/CheckBox/Que04RoundShape.dart';
import 'package:flutter_application_1/Box/CheckBox/Que05DrawCheckBoxwithOther.dart';
import 'package:flutter_application_1/Box/CheckBox/Que06RoundCorner.dart';
import 'package:flutter_application_1/Box/CheckBox/Que07.dart';
import 'Que01.dart';

class HomeCheck extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("checkBox")),
        body: SafeArea(
          child: Container(
            child: Builder(
              builder: (context) => ListView(
                padding: EdgeInsets.all(3.0),
                children: [
                  ButtonsCode(
                      Que03(),
                      "lib/Box/CheckBox/Que03.dart",
                      "Basic CheckBox",
                      "assets/help/Box/Box_CheckBox/1 (1).jpeg",
                      "SubTitle"),
                  ButtonsCode(
                      Que02(),
                      "lib/Box/CheckBox/Que02.dart",
                      "disabled CheckBox",
                      "assets/help/Box/Box_CheckBox/1 (2).jpeg",
                      "SubTitle"),
                  ButtonsCode(
                      Que04(),
                      "lib/Box/CheckBox/Que04RoundShape.dart",
                      "Circular Shaped CheckBox",
                      "assets/help/Box/Box_CheckBox/1 (3).jpeg",
                      "SubTitle"),
                  ButtonsCode(
                      Que06(),
                      "lib/Box/CheckBox/Que06RoundCorner.dart",
                      "Round Corner CheckBox",
                      "assets/help/Box/Box_CheckBox/1 (4).jpeg",
                      "SubTitle"),
                  ButtonsCode(
                      Que07(),
                      "lib/Box/CheckBox/Que07.dart",
                      "Theme CheckBox",
                      "assets/help/Box/Box_CheckBox/1 (5).jpeg",
                      "SubTitle"),
                  ButtonsCode(
                      Que05(),
                      "lib/Box/CheckBox/Que05DrawCheckBoxwithOther.dart",
                      "Custom CheckBox",
                      "assets/help/Box/Box_CheckBox/1 (6).jpeg",
                      "SubTitle"),
                  ButtonsCode(
                      Que01(),
                      "lib/Box/CheckBox/Que01.dart",
                      "generate CheckBox from List",
                      "assets/help/Box/Box_CheckBox/1 (7).jpeg",
                      "SubTitle"),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
